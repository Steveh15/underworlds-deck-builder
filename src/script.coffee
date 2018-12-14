CardViewerViewModel = ->

	self = this
	self.showWarbandBrowser = ko.observable(true)
	self.showCardView = ko.observable(true)
	
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

 
	#  Contains all the universal cards + cards for selected warband
	self.allObjectives = ko.observableArray()
	self.allGambits = ko.observableArray()
	self.allUpgrades = ko.observableArray()

	# Contains the filter objectives which are being displayed
	self.filteredObjectives = ko.observableArray()
	self.filteredGambits = ko.observableArray()
	self.filteredUpgrades = ko.observableArray()

	# Objective Filters
	self.objWarbandCheck = ko.observable(false)
	self.objUniversalCheck = ko.observable(false)

	self.objPhaseFilter = ko.observable(0)


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
	

	self.initFunc = ->
		# exportObj.warbands()[0]
		deckNameParm = self.getParameterByName("dn")
		if deckNameParm == ""
			self.deckName("Unnamed Deck")
		else
			self.deckName(deckNameParm)

		warbandParm = self.getParameterByName("w")
		if warbandParm == ""
			self.selectedWarband(exportObj.warbands()[0])
		else
			loadedWarband = exportObj.warbands().filter((warband) -> warband.name == warbandParm)[0]
			self.selectedWarband(loadedWarband)


	self.selectWarband = (warbandName) ->
		self.selectedWarband(exportObj.warbands().filter((warband) -> warband.name == warbandName)[0])


	self.getWarbandsInSet = (set) ->
		return exportObj.warbands().filter((warband) -> warband.set == set)


	self.deckName.subscribe (newValue) ->
		self.setURL 'dn', newValue
		return


	self.selectedWarband.subscribe (newWarband) ->
		if !newWarband?
			self.setURL 'w', "" # This should never be triggered
		else
			self.setNewWarband(newWarband)


	self.setNewWarband = (newWarband) ->
		self.setURL 'w', newWarband.name
		self.allObjectives exportObj.objectives().filter((objective) -> objective.warband == newWarband.name || !objective.warband?)
		self.allGambits exportObj.gambits().filter((gambit) -> gambit.warband == newWarband.name || !gambit.warband?)
		self.allUpgrades exportObj.upgrades().filter((upgrade) -> upgrade.warband == newWarband.name || !upgrade.warband?)
		self.filteredObjectives(self.allObjectives())
		self.filteredGambits(self.allGambits())
		self.filteredUpgrades(self.allUpgrades())
		self.resetObjectiveFilters()


	self.resetObjectiveFilters = ->
		self.objWarbandCheck(false)
		self.objUniversalCheck(false)


	self.objWarbandCheck.subscribe (newValue) ->
		self.applyObjectiveFilter()

	self.objUniversalCheck.subscribe (newValue) ->
		self.applyObjectiveFilter()


	self.warbandPredicate = (card) ->
		if !self.objWarbandCheck()
			return true
		else
			return card.warband? && card.warband == self.selectedWarband().name

	self.universalPredicate = (card) ->
		if !self.objUniversalCheck()
			return true
		else
			return !card.warband?



	self.applyObjectiveFilter = ->
		self.filteredObjectives(self.allObjectives().filter( (objective) -> self.objectiveFilter(objective)))

	self.objectiveFilter = (objective) ->
		return self.warbandPredicate(objective) && self.universalPredicate(objective)
	


	# Fighter Functionality
	#
	#
	
	self.computedFighters = ko.computed () ->
		if !self.selectedWarband()?
			return []
		else
			return exportObj.fighters().filter (fighter) -> fighter.warband == self.selectedWarband().name

	self.selectFighter = (fighter) ->
		if fighter?
			self.selectedFighter fighter

	# UI Functionality
	#
	#

	self.viewWarband = ->
		if self.showWarbandBrowser() == true
			self.showWarbandBrowser false
		else
			self.showWarbandBrowser true

	self.changeCardViewButton = ->
		self.showCardView(!self.showCardView())



	return




cvm = new CardViewerViewModel()

ko.options.useOnlyNativeEvents = true
ko.applyBindings cvm


cvm.initFunc()