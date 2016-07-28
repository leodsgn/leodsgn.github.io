gulp = require 'gulp'
favicon = require 'gulp-favicons'
gutil = require 'gulp-util'

path = require '../../path'

gulp.task 'build:favicon', ()->
  gulp.src path.favicon.src
  .pipe favicon({
    developerName: "Leonardo Ribeiro",
    developerURL: "https://leodsgn.github.io/",
    path: path.favicon.build,
    url: "https://leodsgn.github.io/",
    display: "standalone",
    orientation: "portrait",
    version: 1.0,
    logging: false,
    online: true,
    html: "./index.html",
    pipeHTML: true,
    replace: true
  })
  .on("error", gutil.log)
  .pipe gulp.dest(path.favicon.build)