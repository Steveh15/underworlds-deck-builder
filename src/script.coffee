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
	self.objWarbandCheck = ko.observable(true)
	self.objUniversalCheck = ko.observable(true)
	self.objImmediateCheck = ko.observable(false)
	self.objEndPhaseCheck = ko.observable(false)
	self.objThirdPhaseCheck = ko.observable(false)




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

	self.selectedWarband.subscribe (newWarband) ->
		if typeof newWarband == "undefined"
			self.setURL 'w', ""
		else
			self.setURL 'w', newWarband.name

			self.allObjectives exportObj.objectives().filter((objective) -> objective.warband == newWarband.name || !objective.warband?)
			self.allGambits exportObj.gambits().filter((gambit) -> gambit.warband == newWarband.name || !gambit.warband?)
			self.allUpgrades exportObj.upgrades().filter((upgrade) -> upgrade.warband == newWarband.name || !upgrade.warband?)
			self.resetObjectiveFilters()
			self.filteredObjectives exportObj.objectives()
			# self.filteredObjectives exportObj.objectives().filter( (objective) -> self.objectiveFilter(objective))
		return

	self.resetObjectiveFilters = ->
		self.objWarbandCheck(true)
		self.objUniversalCheck(true)
		self.objImmediateCheck(false)
		self.objEndPhaseCheck(false)
		self.objThirdPhaseCheck(false)

	self.warbandPredicate = (card) ->
		if !self.objWarbandCheck()
			return true
		else
			console.log card.warband
			# console.log (card.warband? && card.warband = self.selectedWarband().name)
			return card.warband? && card.warband = self.selectedWarband().name

	self.universalPredicate = (card) ->
		return true
		# console.log "p2"
		# if !self.objUniversalCheck()
		# 	return true
		# else
		# 	return !card.warband?

	self.immediatePredicate = (objective) ->
		console.log "p3"
		if !self.objImmediateCheck()
			return true
		else
			return objective.scoring? &&  objective.scoring == 1

	self.objectiveFilter = (objective) ->
		return self.warbandPredicate(objective)

	self.applyObjectiveFilter = ->
		self.filteredObjectives exportObj.allObjectives().filter( (objective) -> self.objectiveFilter(objective))


	self.objWarbandCheck.subscribe (newValue) ->
		self.applyObjectiveFilter()
		# if newValue
		# 	console.log "Turned on!"
		# else
			# console.log "Turned off!"


	
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


	self.changeCardViewButton = ->
		self.showCardView(!self.showCardView())


	self.initFunc = ->
		deckNameParm = self.getParameterByName("dn")
		if deckNameParm == ""
			self.deckName("Unnamed Deck")
		else
			self.deckName(deckNameParm)

		warbandParm = self.getParameterByName("w")
		if warbandParm == ""
			self.selectedWarband(exportObj.warbands()[0])
		# if warbandParm != ""
		else
			loadedWarband = exportObj.warbands().filter((warband) -> warband.name == warbandParm)[0]
			self.selectedWarband(loadedWarband)
			
		return


	self.selectWarband = (warbandName) ->
		self.showWarbandBrowser(true)
		self.selectedWarband(exportObj.warbands().filter((warband) -> warband.name == warbandName)[0])
		return

	self.ShadespireWarbands = (set) ->
		return exportObj.warbands().filter((warband) -> warband.set == set)

	return




cvm = new CardViewerViewModel()

ko.options.useOnlyNativeEvents = true
ko.applyBindings cvm


cvm.initFunc()