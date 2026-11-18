[![Github Actions](https://github.com/webshipco/josa-ngo-automated-testing/actions/workflows/github-actions.yml/badge.svg?branch=main)](https://github.com/webshipco/josa-ngo-automated-testing/actions)

# Automated Testing [Josa.ngo](https://www.josa.ngo/) website using Webship-js tool

The public pages of https://www.josa.ngo, tested as an anonymous visitor with [webship-js](https://github.com/webship/webship-js) 2 (Playwright and cucumber-js): the header and the language switch, the home page, the blog, the events, the team and the contact page. The suite never logs in and never sends a form.

## Run it

With Node.js 20 or newer:

```bash
npm ci
npx playwright install chromium
npm test
```

- `npm run test:dry-run`: every step is defined and none is ambiguous; nothing runs.
- `npm run test:headed`: watch the browser.
- `npx cucumber-js tests/features/check-blog.feature`: one feature alone.
- `LAUNCH_URL=https://staging.example.org npm test`: another copy of the site.

At the end of a run the HTML report is in `tests/reports/`, and a screenshot of each failed step in `tests/screenshots/`.

## CI

GitHub Actions runs the suite on every push and pull request to `main`, and by hand (`.github/workflows/github-actions.yml`): one run at a time against the live site, with the reports kept for 14 days.
