class App.Routers.MainRouter extends Backbone.Router

	routes:
		"":"index"
		"projects": "project"

	initialize: ->
		@headerView = new App.Views.Header()
		@contentView = new App.Views.Content()
		@footerView = new App.Views.Footer()

	index: ->
		@layoutViews()

	project: ->
		@layoutViews()

	layoutViews: ->
		console.log('Loading Router');
		$('#header').html(@headerView.render().el)
		$('#content').html(@contentView.render().el)
		$('#footer').html(@footerView.render().el)
		console.log("All views initialized");