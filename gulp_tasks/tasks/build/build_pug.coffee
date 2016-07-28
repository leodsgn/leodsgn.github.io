gulp = require 'gulp'
pug = require 'gulp-pug'
sourcemap = require 'gulp-sourcemaps'
gutil = require 'gulp-util'

path = require '../../path'

gulp.task 'build:pug', ()->
  gulp.src path.pug.src + "/index.pug"
  .pipe sourcemap.init()
  .pipe pug({
    pretty: true
  })
  .pipe sourcemap.write('.')
  .on 'error', gutil.log
  .pipe gulp.dest(path.pug.build)


gulp.task 'watch:pug', ()->
  gulp.watch path.pug.src + '/**/**/*.pug', ['build:pug']