class App.Views.Content extends Backbone.View

	template: HandlebarsTemplates['app/templates/content']
	className: "row"

	initialize: ->
		@listenTo App.Vent, "project:show", @showProject

	showProject: (model) ->
		@swapMain(new App.Views.ProjectDetails({ 
				model: model 
			}))

	render: ->
		console.log('Loading Content View')
		@$el.html(@template())
		# @renderEmptyView()
		# @renderProjectsView()
		@

	changeCurrentMainView: (v) ->
		@currentMainView.remove() if @currentMainView
		@currentMainView = v;
		@

	swapMain: (v) ->
		@changeCurrentMainView(v)
		@$('#content-main').html(@currentMainView.render().el)
		@

	changeCurrentSideView: (v) ->
		@currentSideView.remove() if @currentSideView
		@currentSideView = v
		@

	swapSide: (v) ->
		@changeCurrentSideView(v)
		@$('#content-sidebar').html(@currentSideView.render().el)
		@