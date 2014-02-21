class App.Routers.MainRouter extends Backbone.Router

	routes:
		"":"index"

	initialize: ->
		@headerView = new App.Views.Header()
		@contentView = new App.Views.Content()
		@footerView = new App.Views.Footer()

	index: ->
		console.log('Loading Router');
		$('#header').html(@headerView.render().el)
		$('#content').html(@contentView.render().el)
		$('#footer').html(@footerView.render().el)
		console.log("All views initialized");