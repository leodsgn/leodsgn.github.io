gulp = require 'gulp'
runSequence = require 'run-sequence'

gulp.task 'build', ['build:stylus', 'build:coffee', 'build:images', 'build:pug']

gulp.task 'build', (callback)->
  runSequence 'build:stylus',
    'build:coffee',
    'build:images',
    'build:pug',
    callback