module.exports = (grunt) ->
    grunt.initConfig
        coffee:
            compile:
                options:
                    bare: true
                    join: true
                    runtime: 'window'
                    sourceMap: true
                files:
                    'build/coffee-compiled.js': ['src/coffee/*.coffee']


        watch:
            files: '**/*.coffee'
            tasks: ['coffee']


        uglify:
            my_target:
              files:
                'dest/output.min.js': ['build/coffee-compiled.js', 'scripts/script.js']

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-uglify'

    grunt.registerTask 'default', [
        'coffee'
        'uglify'
    ]


