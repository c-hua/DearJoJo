	// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require jquery.tubular.1.0
//= require_tree .

$('document').ready(function(){
	//$('body').tubular({videoId: '0Bmhjf0rKe8'});
	$(function() {
	    var BV = new $.BigVideo();
	    BV.init();
	    BV.show('http://vjs.zencdn.net/v/oceans.mp4');
	});
})