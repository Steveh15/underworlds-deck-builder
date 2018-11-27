CardViewerViewModel = ->

	self = this
	self.showWarbandBrowser = ko.observable(true)
	self.showWarbandBrowser = ko.observable(true)
	self.showCardView = ko.observable(true)
	self.showDeckView = ko.observable(false)
	self.loggedIn = ko.observable(false)
	self.selectedWarband = ko.observable()
	self.selectedFighter = ko.observable()
	self.allObjectives = ko.observableArray()
	self.filteredObjectives = ko.observableArray()
	self.deckObjectives = ko.observableArray()
	self.allPloys = ko.observableArray()
	self.filteredPloys = ko.observableArray()
	self.deckPloys = ko.observableArray()
	self.warbands = exportObj.warbands()

	self.test = ko.observable(window.location.search)


	self.setURL = ->
		window.location.href = ""
	
	self.computedFighters = ko.computed () ->
		if typeof self.selectedWarband() == "undefined"
			return []
		else
			return exportObj.fighters().filter (fighter) -> fighter.warband == self.selectedWarband().name

	self.selectFighter = (fighter) ->
		if typeof fighter != "undefined"
			self.selectedFighter fighter
		return

	self.viewWarband = ->
		if self.showWarbandBrowser() == true
			self.showWarbandBrowser false
		else
			self.showWarbandBrowser true

	self.cardViewButton = ->
		if self.showCardView() == false
			self.showCardView true
			self.showDeckView false

	self.deckViewButton = ->
		if self.showDeckView() == false
			self.showCardView false
			self.showCardView true

	self.logIn = ->
		self.loggedIn true

	self.logOut = ->
		self.loggedIn false

	return

ko.applyBindings new CardViewerViewModel()
