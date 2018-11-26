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
                'docs/scripts/scripts.min.js': ['src/coffee/coffee-compiled.js', 'src/script.js']

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-uglify'

    grunt.registerTask 'default', [
        'coffee'
    ]


    grunt.registerTask 'build', [
        'coffee'
    ]


