class App.Routers.MainRouter extends Backbone.Router

	routes:
		"":"index"
		"projects": "project"
		"projects/new": "newProject"
		"projects/[:id]" : "showProject"

	initialize: ->
		@headerView = new App.Views.Header()
		@contentView = new App.Views.Content()
		@footerView = new App.Views.Footer()

	showProject: ->
		@layoutViews()
		@contentView.swapMain(new App.Views.Projects({
			collection: new App.collections.Projects
			}))

	newProject: ->
		@layoutViews()
		@contentView.swapMain(new App.Views.NewProject({model: new App.Models.Project}))
		@contentView.swapSide(new App.Views.Projects({
			collection: new App.Collections.Projects
			}))

	index: ->
		@layoutViews()
		@contentView.swapMain(new App.Views.Ads())
		@contentView.swapSide(new App.Views.News())
		console.info "Ads and news Loaded"

	project: ->
		@layoutViews()
		@contentView.swapMain(new App.Views.Empty())
		@contentView.swapSide(new App.Views.Projects({
			collection: new App.Collections.Projects
			}))


	layoutViews: ->
		console.log('Loading Router');
		$('#header').html(@headerView.render().el)
		$('#content').html(@contentView.render().el)
		$('#footer').html(@footerView.render().el)
		console.log("All views initialized");