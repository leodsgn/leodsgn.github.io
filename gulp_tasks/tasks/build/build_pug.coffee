gulp = require 'gulp'
pug = require 'gulp-pug'

path = require '../../path'

gulp.task 'build:pug', ()->
  gulp.src path.pug.src + "/index.pug"
  .pipe pug({
    pretty: true
  })
  .pipe gulp.dest(path.pug.build)


gulp.task 'watch:pug', ()->
  gulp.watch path.pug.src + '/**/**/*.pug', ['build:pug']