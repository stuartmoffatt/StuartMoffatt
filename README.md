# Personal site

Built using [Middleman v4](https://middlemanapp.com), and deployed to Github
Pages using `middleman-deploy`.

## GitHub Pages set-up

The site is hosted on Github Pages as a [user site](https://pages.github.com/),
which means that the `master` branch must contain the static site pages and
assets.

The Middleman site source lives on the `source` branch, and all development
should be done on this branch. Running `middleman deploy` then builds the site
and pushes to the compiled site to the `master` branch.
