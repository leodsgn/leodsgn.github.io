gulp = require 'gulp'
runSequence = require 'run-sequence'

gulp.task 'watch', ['watch:stylus', 'watch:coffee', 'watch:images', 'watch:pug']