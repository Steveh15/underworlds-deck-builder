// including plugins
var gulp = require('gulp')
, coffee = require("gulp-coffee");
 
// task
gulp.task('compile-coffee', function () {
    gulp.src('/*.coffee') // path to your file
    .pipe(coffee())
    .pipe(gulp.dest('/'));
});