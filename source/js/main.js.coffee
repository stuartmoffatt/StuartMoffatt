$ ->
	
	makeHigh = ->
	  h = $(window).height() + 25
	  $("body").css "padding-top", h
	  $(".photo").height h

	$(window).resize ->
		makeHigh()

	makeHigh()
