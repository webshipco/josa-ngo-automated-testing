// The cucumber-js configuration of this suite, made from the one webship-js
// 2.0.13 writes (`npx init-webship-js`) and adapted to test a live site.
//
// One scenario at a time: no `parallel` key, so cucumber-js runs a single
// worker, and no `retry`, so a failure is reported, never hidden by a second
// try against the live site.

// A feature file, a scenario (file:line), a folder or a rerun file named on
// the command line of cucumber-js runs alone (cucumber-js 12 would add it to
// the paths below): `npx cucumber-js tests/features/home-page.feature`.
const OPTIONS_WITH_A_VALUE = new Set([
  '-c', '--config', '-f', '--format', '--format-options', '--i18n-keywords',
  '-i', '--import', '-l', '--loader', '--language', '--name', '--order',
  '-p', '--profile', '--parallel', '--plugin', '--plugin-options',
  '-r', '--require', '--require-module', '--retry', '--retry-tag-filter',
  '--shard', '-t', '--tags', '--world-parameters',
]);

function commandLinePaths() {
  if (!/cucumber(-js|\.js)?$/.test(String(process.argv[1] || ''))) return [];
  const args = process.argv.slice(2);
  const paths = [];
  for (let i = 0; i < args.length; i += 1) {
    if (args[i].startsWith('-')) {
      if (OPTIONS_WITH_A_VALUE.has(args[i])) i += 1;
    } else {
      paths.push(args[i]);
    }
  }
  return paths;
}

module.exports = {
  default: {
    // webship-js sets the step timeout itself (45 s); raise it with WEBSHIP_STEP_TIMEOUT.
    timeout: 30000,
    // Loads playwright.config.ts, the TypeScript Playwright config.
    requireModule: ['tsx/cjs'],
    require: [
      // webship-js: the built-in steps, the browser, the HTML report written on exit.
      'node_modules/webship-js/tests/step-definitions/**/*.js',
      // This suite's own steps and hooks.
      'tests/step-definitions/**/*.js',
    ],
    // FEATURES=tests/features/a.feature,tests/features/b.feature runs a subset too.
    paths: process.env.FEATURES ? process.env.FEATURES.split(',') : (commandLinePaths().length ? [] : ['tests/features/**/*.feature']),
    // CUCUMBER_TAGS replaces the expression: CUCUMBER_TAGS=@wip npm test
    tags: process.env.CUCUMBER_TAGS || 'not @wip',
    format: [
      '@cucumber/pretty-formatter',
      'json:tests/reports/cucumber_report.json',
    ],
    formatOptions: {
      theme: {
        'feature keyword': ['bold', 'blue'],
        'feature name': ['blue', 'underline'],
        'feature description': ['blueBright'],
        'scenario keyword': ['bold', 'magenta'],
        'scenario name': ['magenta', 'underline'],
        'step keyword': ['bold', 'green'],
        'step text': ['greenBright', 'italic'],
      },
    },
    worldParameters: {
      // The site under test: LAUNCH_URL=https://staging.example.com npm test
      launchUrl: process.env.LAUNCH_URL || 'https://www.josa.ngo',
      minWaitTime: {
        page: 3000,
        before_scenario: 0,
        after_scenario: 0,
        before_step: 0,
        after_step: 0,
      },
      // No `users`: the suite is an anonymous visitor and never logs in.
      selectors: {
        css: {},
        xpath: {},
        // Named viewport sizes for the viewing-the-site and set-the-viewport
        // steps and the @mobile / @desktop tags (built in: xs..xxxl, mobile,
        // tablet, desktop). Without a desktop here, @desktop opens at the
        // breakpoint marked default: true.
        breakpoints: {
          xs:   { width: 375,  height: 667  },
          sm:   { width: 576,  height: 800  },
          md:   { width: 768,  height: 1024 },
          lg:   { width: 992,  height: 768  },
          xl:   { width: 1200, height: 900, default: true },
          xxl:  { width: 1400, height: 900  },
          xxxl: { width: 1920, height: 1080 },
        },
      },
      screenshot: {
        dir: './tests/screenshots',
        purge: false,
        onFailed: true,
        onEveryStep: false,
        alwaysFullscreen: false,
        failedPrefix: 'failed_',
        filenamePattern: '{datetime}.{feature_file}.feature_{step_line}.{ext}',
        filenamePatternFailed: '{failed_prefix}{datetime}.{feature_file}.feature_{step_line}.{ext}',
        infoTypes: '',
      },
    },
  },
};
