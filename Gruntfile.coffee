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
    
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.registerTask 'default', [
        'coffee'
    ]


