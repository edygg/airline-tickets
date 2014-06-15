# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

initialize = ->
	$('.keep-open').on
	    "shown.bs.dropdown": ->
	    	$(@).data('closable', false)
	    	return
	    "click": ->            
	    	$(@).data('closable', true)
	    	return
	    "hide.bs.dropdown": ->  
	    	return $(@).data('closable')
	return

$(document).on 'page:load', initialize
	

$(document).ready initialize
	