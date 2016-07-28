gulp = require 'gulp'
runSequence = require 'run-sequence'

gulp.task 'watch', (callback)->
  runSequence 'watch:stylus',
    'watch:coffee',
    'watch:images',
    'watch:pug',
    callback