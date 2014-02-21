class App.Views.Content extends Backbone.View

	template: HandlebarsTemplates['app/templates/content']
	className: "row"

	render: ->
		console.log('Loading Content View')
		@$el.html(@template())
		@renderEmptyView()
		@renderProjectsView()
		@

	renderEmptyView: ->
		v = new App.Views.Empty()
		@$('#content-main').html(v.render().el)
		@
	renderProjectsView: ->
		v= new App.Views.Projects({collection: new App.Collections.Projects })
		@$('#content-sidebar').html(v.render().el)
		@