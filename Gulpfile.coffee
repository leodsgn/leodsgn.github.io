gulp = require 'gulp'
requireDir = require 'require-dir'
runSequence = require 'run-sequence'

requireDir('./gulp_tasks/tasks', {recurse: true})

gulp.task 'default',  ()->
  runSequence 'build', 'watch', 'serve'
