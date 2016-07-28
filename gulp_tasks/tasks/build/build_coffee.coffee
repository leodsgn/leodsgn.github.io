gulp = require 'gulp'
pug = require 'gulp-coffee'
coffeeify = require 'gulp-coffeeify'
uglify = require 'gulp-uglify'
#sourcemap = require 'gulp-sourcemap'

path = require '../../path'

gulp.task 'build:coffee', ()->
  gulp.src path.coffee.src + "/index.coffee", {read: false}
  .pipe coffeeify({
    options: {
      bare: false
    }
  })
  .pipe uglify()
  .pipe(gulp.dest(path.coffee.build))


gulp.task 'watch:coffee', ()->
  gulp.watch path.coffee.src + '/**/**/*.coffee', ['build:coffee']