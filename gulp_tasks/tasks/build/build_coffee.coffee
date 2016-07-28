gulp = require 'gulp'
pug = require 'gulp-coffee'
browserify = require 'gulp-browserify'
uglify = require 'gulp-uglify'
sourcemap = require 'gulp-sourcemaps'
gutil = require 'gulp-util'

path = require '../../path'

gulp.task 'build:coffee', ()->
  gulp.src path.coffee.src + "/index.coffee", {read: false}
  .pipe sourcemap.init()
  .pipe browserify({
    transform: ['coffeeify'],
    extensions: ['.coffee']
  })
  .pipe uglify()
  .pipe sourcemap.write('.')
  .on 'error', gutil.log
  .pipe(gulp.dest(path.coffee.build))


gulp.task 'watch:coffee', ()->
  gulp.watch path.coffee.src + '/**/**/*.coffee', {cwd: path.coffee.src}, ['build:coffee']
  return