module.exports = (grunt) ->

  grunt.initConfig
    coffee:
      options:
        bare: false
      compile:
        files:
          'src/string-calculator.js': 'src/string-calculator.coffee'
          'test/string-calculator.spec.js': 'test/string-calculator.spec.coffee'
          'test/helpers.js': 'test/helpers.coffee'
    watch:
      files: [
        'src/string-calculator.coffee'
        'test/string-calculator.spec.coffee'
      ]
      tasks: 'default'
      karma:
        files: ['src/string-calculator.js', 'test/string-calculator.spec.js']
        tasks: ['karma:unit:run']
    karma:
      unit:
        configFile: 'karma.conf.js'
        background: true
        singleRun: false
        browsers: ['PhantomJS']

  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks)

  grunt.registerTask 'default', ['coffee', 'karma']
