class App.Views.Project extends Backbone.View
	template: HandlebarsTemplates['app/templates/project']
	initialize: ->

	render: ->
		@$el.html(@template(@model.toJSON()))
		@