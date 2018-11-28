CardViewerViewModel = ->

	self = this
	self.showWarbandBrowser = ko.observable(true)
	self.showWarbandBrowser = ko.observable(true)
	self.showCardView = ko.observable(true)
	self.showDeckView = ko.observable(false)
	self.loggedIn = ko.observable(false)
	
	self.selectedFighter = ko.observable()
	self.deckName = ko.observable()
	self.allObjectives = ko.observableArray()
	self.filteredObjectives = ko.observableArray()
	self.deckObjectives = ko.observableArray()
	self.allPloys = ko.observableArray()
	self.filteredPloys = ko.observableArray()
	self.deckPloys = ko.observableArray()
	self.warbands = exportObj.warbands()
	self.selectedWarband = ko.observable()



	self.setURL = (key, value) ->

		keyEn = encodeURI key
		valueEn = encodeURI value
		kvp = document.location.search.substr(1).split '&'
		
		i = kvp.length
	
		while( i-- )
			x = kvp[i].split('=')
			if x[0] == keyEn
				x[1] = valueEn
				kvp[i] = x.join('=')
				break

		if i < 0
			kvp[kvp.length] = [keyEn, valueEn].join '='
		
		newurl = window.location.protocol + "//" + window.location.host  +  window.location.pathname + '?' + kvp.join '&'
		window.history.pushState({ path: newurl }, '', newurl)
		return



	# ripped from http://stackoverflow.com/questions/901115/how-can-i-get-query-string-values
	self.getParameterByName = (name) ->
		name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]")
		regexS = "[\\?&]" + name + "=([^&#]*)"
		regex = new RegExp(regexS)
		results = regex.exec(window.location.search)
		if results == null
			return ""
		else
			return decodeURIComponent(results[1].replace(/\+/g, " "))

	self.deckName.subscribe (newValue) ->
		self.setURL 'dn', newValue
		return

	self.selectedWarband.subscribe (newValue) ->
		if typeof newValue == "undefined"
			self.setURL 'w', ""
		else
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

	self.initFunc = ->
		deckNameParm = self.getParameterByName("dn")
		if deckNameParm == ""
			self.deckName("Unnamed Deck")
		else
			self.deckName(deckNameParm)

		warbandParm = self.getParameterByName("w")
		console.log "loaded : " + warbandParm
		if warbandParm != ""
			loadedWarband = exportObj.warbands().filter((warband) -> warband.name == warbandParm)[0]
			console.log(loadedWarband)
			self.selectedWarband(loadedWarband)
			
		return


	self.aClick = (name) ->
		console.log name  + "Hmmmmm"
		return


	return




cvm = new CardViewerViewModel()

ko.options.useOnlyNativeEvents = true
ko.applyBindings cvm


cvm.initFunc()