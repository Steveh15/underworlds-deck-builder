
exportObj = exports ? this

exportObj.fighters = ->
	[
		{
			name: "Severin Steelheart"
			warband: "Steelheart's Champions"
			captain: true
			movement: 3
			defence: { value: 1, char: "%S%" }
			wounds: 4
			attacks: [
				{
					name: "Sigmarite Broadsword"
					range: 1
					value: 2
					char: "%H%"
					dmg: 3
				}
			]
			inspire_cond: "This fighter rolls a %S% or a %CRIT% when the target of an attack."
			inspiredVersion: {
				name: "Steelheart Inspired"
				warband: "Steelheart's Champions"
				movement: 3
				defence: { value: 2, char: "%S%" }
				wounds: 4
				attacks: [
					{
						name: "Sigmarite Broadsword"
						range: 1
						value: 2
						char: "%H%"
						dmg: 3
					}
					{
						name: "Mighty Swing"
						range: 1
						value: 2
						char: "%H%"
						dmg: 2
					}
				]
				text: "<div><strong> Mighty Swing</strong><div> Targets all adjacent enemies. Roll for each."
			}
		}
		{
			name: "Angharad Brightshield"
			warband: "Steelheart's Champions"
			movement: 3
			defence: { value: 1, char: "%S%" }
			wounds: 4
			attacks: [
				{
					name: "Sigmarite Hammer"
					range: 1
					value: 3
					char: "%H%"
					dmg: 2
				}
			]
			inspire_cond: "This fighter rolls a %S% or a %CRIT% when the target of an attack."
			inspiredVersion: {
				name: "Brightshield Inspired"
				warband: "Steelheart's Champions"
				movement: 3
				defence: { value: 2, char: "%S%" }
				wounds: 4
				attacks: [
					{
						name: "Sigmarite Hammer"
						range: 1
						value: 3
						char: "%H%"
						dmg: 2
					}
					{
						name: "Furious Parry"
						range: 1
						value: 2
						char: "%H%"
						dmg: 1
					}
				]
				text: "<strong> <div>Furious Parry<div>Reaction: </strong> During an Attack action that targets this fighter and has failed, this fighter cannot be driven back and you can make this Attack action. It must target the attacker."
			}
		}
		{
			name: "Obryn the Bold"
			warband: "Steelheart's Champions"
			movement: 3
			defence: { value: 1, char: "%S%" }
			wounds: 4
			attacks: [
				{
					name: "Sigmarite Grandhammer"
					range: 1
					value: 2
					char: "%H%"
					dmg: 3
					text: "Knockback 1"
				}
			]
			inspire_cond: "This fighter rolls a %S% or a %CRIT% when the target of an attack."
			inspiredVersion: {
				name: "Obryn Inspired"
				warband: "Steelheart's Champions"
				movement: 3
				defence: { value: 2, char: "%S%" }
				wounds: 4
				attacks: [
					{
						name: "Sigmarite Grandhammer"
						range: 1
						value: 2
						char: "%H%"
						dmg: 3
						text: "Knockback 1"
					}
					{
						name: "Overhead Strike"
						range: 1
						value: 2
						char: "%H%"
						dmg: 3
						text: "Cleave"
					}
				]
			}
		}
		{
			name: "Averon Stormsire"
			warband: "Stormsire's Cursebreakers"
			captain: true
			magic: 2
			movement: 3
			defence: { value: 1, char: "%S%" }
			wounds: 4
			attacks: [
				{
					name: "Incantor's Staff"
					range: 2
					value: 2
					char: "%H%"
					dmg: 2
				}
			]
			spells: [
				{
				name: "Fulmination"
				range: 3
				dmg: 1
				}
			]
			inspire_cond: "This fighter successfully casts a spell."
			inspiredVersion: {
				name: "Stormsire Inspired"
				warband: "Stormsire's Cursebreakers"
				magic: 2
				movement: 3
				defence: { value: 2, char: "%S%" }
				wounds: 4
				attacks: [
					{
						name: "Incantor's Staff"
						range: 2
						value: 2
						char: "%H%"
						dmg: 2
					}
				]
				spells: [
					{
						name: "Fulmination"
						range: 3
						dmg: 2
					}
				]
				text: "<div><strong> Mighty Swing</strong><div> Targets all adjacent enemies. Roll for each."
			}
		}
		{
			name: "Vortemis the All-Seeing"
			warband: "Eyes of the Nine"
			captain: true
			magic: 2
			movement: 4
			defence: { value: 1, char: "%E%" }
			wounds: 4
			attacks: [
				{
					name: "Tzeentchain Runestaff"
					range: 2
					value: 2
					char: "%H%"
					dmg: 2
				}
			]
			spells: [
				{
				name: "Bolt of Change"
				range: 3
				dmg: 1
				}
			]
			inspire_cond: "This fighter makes a successful Attack action with a Range of 3 or more"
			text: "<div><strong>Action:</strong><div> If there is no friendly Blue Horror or Brimstone Horrors on the battlefield, place a friendly Blue Horror on any starting hex."
			inspiredVersion: {
				name: "Vortemis the All-Seeing"
				warband: "Eyes of the Nine"
				captain: true
				magic: 2
				movement: 4
				defence: { value: 2, char: "%E%" }
				wounds: 4
				attacks: [
					{
						name: "Tzeentchain Runestaff"
						range: 2
						value: 2
						char: "%H%"
						dmg: 2
					}
				]
				spells: [
					{
					name: "Bolt of Change"
					range: 3
					dmg: 2
					}
				]
				text: "<div><strong>Action:</strong><div> If there is no friendly Blue Horror or Brimstone Horrors on the battlefield, place a friendly Blue Horror on any starting hex."
			}
		}
		{
			name: "Brimstone Horrors"
			warband: "Eyes of the Nine"
			movement: 3
			defence: { value: 1, char: "%E%" }
			wounds: 1
			attacks: [
				{
					name: "Magical Flames"
					range: 3
					value: 2
					char: "%S%"
					dmg: 1
				}
			]
			text: "<div><strong>Magical Flames</strong><div> <strong>Reaction :</strong> After the first time this fighter makes this Attack action in a phase, make another Attack action with this fighter. Do not place this fighter during set up. This fighter cannot be given Attack action upgrades, and cannot be Inspired. If this fighter is taken out of action, flip this fighter card over. It keeps any upgrades."
		}
	]

exportObj = exports ? this

scoring = {
	endPhase: 1
	thirdEndPhase: 2
	immiediate: 3
}


exportObj.objectives = ->
	[
		{
			setID: 1
			cardID: 1
			name: "Something"
			glory: 1
			faction: "Steelheat's Champions"
			scoreTime: scoring.endPhase
		}
		{
			setID: 1
			cardID: 2
			name: "Something Else"
			glory: 2
			faction: "Steelheat's Champions"
			scoreTime: scoring.thirdEndPhase
		}
	]


# exportObj.fighters().filter(fighter => fighter.warband == self.selectedWarband().name);

console.log exportObj.objectives().filter (fighter) -> fighter.scoreTime == scoring.endPhase


exportObj = exports ? this

exportObj.warbands = ->
	[
		{
			name: "Steelheart's Champions"
			set: "Shadespire"
		}
		{
			name: "Stormsire's Cursebreakers"
			set: "Nightvault"
		}
		{
			name: "Eyes of the Nine"
			set: "Nightvault"
		}
	]





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


