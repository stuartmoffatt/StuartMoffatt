$ ->
	
	makeHigh = ->
	  h = $(window).height() + 70
	  $("body").css "padding-top", h
	  $(".photo").height h

	$(window).resize ->
		makeHigh()

	makeHigh()
