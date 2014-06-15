# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

initialize = ->
	allowClose = false
	$('.keep-open').on 'shown.bs.dropdown', ->
	    allowClose = true;

	$('.keep-open').on 'click', ->
	    allowClose = false;

	$('.keep-open').on 'hide.bs.dropdown', ->
	    if not allowClose 
	    	return false

$(document).on 'page:load', initialize
	

$(document).ready initialize
	