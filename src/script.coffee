CardViewerViewModel = ->

	self = this
	self.showWarbandBrowser = ko.observable(true)
	self.showWarbandBrowser = ko.observable(true)
	self.showCardView = ko.observable(true)
	self.showDeckView = ko.observable(false)
	self.loggedIn = ko.observable(false)
	
	self.selectedFighter = ko.observable()
	self.deckName = ko.observable("Unnamed deck")
	self.allObjectives = ko.observableArray()
	self.filteredObjectives = ko.observableArray()
	self.deckObjectives = ko.observableArray()
	self.allPloys = ko.observableArray()
	self.filteredPloys = ko.observableArray()
	self.deckPloys = ko.observableArray()
	self.warbands = exportObj.warbands()
	self.selectedWarband = ko.observable(self.warbands[0])



	self.setURL = (key,value) ->

		keyEn = encodeURI key
		valueEn = encodeURI value
		kvp = document.location.search.substr(1).split '&'
		
		i=kvp.length
	
		while(i--) 
			x = kvp[i].split('=')
			if x[0]==keyEn
				x[1] = valueEn;
				kvp[i] = x.join('=')
				break;

		if i<0 
			kvp[kvp.length] = [keyEn,valueEn].join '='
		
		newurl = window.location.protocol + "//" + window.location.host  +  window.location.pathname + '?' + kvp.join '&'
		window.history.pushState({path:newurl},'',newurl);
		return

	self.deckName.subscribe (newValue) -> 
		self.setURL 'dn', newValue
		return

	self.selectedWarband.subscribe (newValue) -> 
		self.setURL 'w', newValue.name
		return

	
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
