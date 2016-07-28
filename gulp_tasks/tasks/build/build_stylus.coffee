gulp = require 'gulp'
stylus = require 'gulp-stylus'
sourcemap = require 'gulp-sourcemaps'
gutil = require 'gulp-util'

path = require '../../path'

gulp.task 'build:stylus', ()->
  gulp.src path.stylus.src + "/index.styl"
  .pipe sourcemap.init()
  .pipe stylus({
    compress: true
  })
  .pipe sourcemap.write('.')
  .on 'error', gutil.log
  .pipe gulp.dest(path.stylus.build)


gulp.task 'watch:stylus', ()->
  gulp.watch path.stylus.src + '/**/**/*.styl', {cwd: path.stylus.src}, ['build:stylus']
  return