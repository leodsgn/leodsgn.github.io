gulp = require 'gulp'
imagemin = require 'gulp-imagemin'
gutil = require 'gulp-util'

path = require '../../path'

gulp.task 'build:images', ()->
  gulp.src path.image.src + "/*"
  .pipe imagemin()
  .on 'error', gutil.log
  .pipe gulp.dest(path.image.build)


gulp.task 'watch:images', ()->
  gulp.watch path.image.src + "/*", {cwd: path.image.src}, ['build:images']
  return