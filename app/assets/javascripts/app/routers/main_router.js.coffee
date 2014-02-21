class App.Routers.MainRouter extends Backbone.Router

	routes:
		"":"index"

	initialize: ->
		@headerView = new App.Views.Header()

	index: ->
		console.log('Loading Router');
		$('#header').html(@headerView.render().el)