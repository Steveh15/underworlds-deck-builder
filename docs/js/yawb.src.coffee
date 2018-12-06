
exportObj = exports ? this

exportObj.fightersCommon = ->
	[
		{
			name: "Severin Steelheart"
			warband: "Steelheart's Champions"
			captain: true
			movement: 3
			defence: { value: 1, char: "%SHIELD%" }
			wounds: 4
			attacks: [
				{
					name: "Sigmarite Broadsword"
					range: 1
					value: 2
					char: "%HAMMER%"
					dmg: 3
				}
			]
			inspire_cond: "This fighter rolls a %SHIELD% or a %CRIT% when the target of an attack."
			inspiredVersion: {
				name: "Steelheart Inspired"
				warband: "Steelheart's Champions"
				movement: 3
				defence: { value: 2, char: "%SHIELD%" }
				wounds: 4
				attacks: [
					{
						name: "Sigmarite Broadsword"
						range: 1
						value: 2
						char: "%HAMMER%"
						dmg: 3
					}
					{
						name: "Mighty Swing"
						range: 1
						value: 2
						char: "%HAMMER%"
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
			defence: { value: 1, char: "%SHIELD%" }
			wounds: 4
			attacks: [
				{
					name: "Sigmarite Hammer"
					range: 1
					value: 3
					char: "%HAMMER%"
					dmg: 2
				}
			]
			inspire_cond: "This fighter rolls a %SHIELD% or a %CRIT% when the target of an attack."
			inspiredVersion: {
				name: "Brightshield Inspired"
				warband: "Steelheart's Champions"
				movement: 3
				defence: { value: 2, char: "%SHIELD%" }
				wounds: 4
				attacks: [
					{
						name: "Sigmarite Hammer"
						range: 1
						value: 3
						char: "%HAMMER%"
						dmg: 2
					}
					{
						name: "Furious Parry"
						range: 1
						value: 2
						char: "%HAMMER%"
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
			defence: { value: 1, char: "%SHIELD%" }
			wounds: 4
			attacks: [
				{
					name: "Sigmarite Grandhammer"
					range: 1
					value: 2
					char: "%HAMMER%"
					dmg: 3
					text: "Knockback 1"
				}
			]
			inspire_cond: "This fighter rolls a %SHIELD% or a %CRIT% when the target of an attack."
			inspiredVersion: {
				name: "Obryn Inspired"
				warband: "Steelheart's Champions"
				movement: 3
				defence: { value: 2, char: "%SHIELD%" }
				wounds: 4
				attacks: [
					{
						name: "Sigmarite Grandhammer"
						range: 1
						value: 2
						char: "%HAMMER%"
						dmg: 3
						text: "Knockback 1"
					}
					{
						name: "Overhead Strike"
						range: 1
						value: 2
						char: "%HAMMER%"
						dmg: 3
						text: "Cleave"
					}
				]
			}
		}
		{
			name: "Garrek Gorebeard"
			warband: "Garrek's Reavers"
			captain: true
			movement: 4
			defence: { value: 1, char: "%DODGE%" }
			wounds: 4
			attacks: [
				{
					name: "Blooddrinker Axe"
					range: 1
					value: 2
					char: "%HAMMER%"
					dmg: 2
				}
			]
			inspire_cond: "At least three fighters are out of action"
			inspiredVersion: {
				name: "Garrek Inspired"
				warband: "Garrek's Reavers"
				movement: 5
				defence: { value: 1, char: "%DODGE%" }
				wounds: 4
				attacks: [
					{
						name: "Awakened Axe"
						range: 1
						value: 2
						char: "%HAMMER%"
						dmg: 3
					}
				]
			}
		}
		{
			name: "Karsus the Chained"
			warband: "Garrek's Reavers"
			movement: 4
			defence: { value: 1, char: "%DODGE%" }
			wounds: 3
			attacks: [
				{
					name: "Chained Axe"
					range: 2
					value: 3
					char: "%SWORDS%"
					dmg: 1
				}
				{
					name: "Brutal Chop"
					range: 1
					value: 3
					char: "%SWORDS%"
					dmg: 2
				}
			]
			inspire_cond: "At least three fighters are out of action"
			inspiredVersion: {
				name: "Karsus Inspired"
				warband: "Garrek's Reavers"
				movement: 5
				defence: { value: 1, char: "%DODGE%" }
				wounds: 3
				attacks: [
					{
						name: "Chained Axe"
						range: 2
						value: 3
						char: "%SWORDS%"
						dmg: 2
					}
					{
						name: "Savage Whirl"
						range: 1
						value: 2
						char: "%SWORDS%"
						dmg: 2
					}
				]
				text: "<div><strong>Savage Whirl</strong></div> Targets all adjacent enemies - roll for each."
			}
		}
		{
			name: "Blooded Saek"
			warband: "Garrek's Reavers"
			movement: 4
			defence: { value: 1, char: "%DODGE%" }
			wounds: 3
			attacks: [
				{
					name: "Great Axe"
					range: 1
					value: 2
					char: "%HAMMER%"
					dmg: 3
				}
			]
			inspire_cond: "At least three fighters are out of action"
			inspiredVersion: {
				name: "Saek Inspired"
				warband: "Garrek's Reavers"
				movement: 5
				defence: { value: 1, char: "%DODGE%" }
				wounds: 3
				attacks: [
					{
					name: "Great Axe"
					range: 1
					value: 2
					char: "%HAMMER%"
					dmg: 3
					text: "Cleave"
					}
				]
			}
		}
		{
			name: "Targor"
			warband: "Garrek's Reavers"
			movement: 4
			defence: { value: 1, char: "%DODGE%" }
			wounds: 2
			attacks: [
				{
					name: "Gore-Axe and Blade"
					range: 1
					value: 2
					char: "%SWORDS%"
					dmg: 1
				}
			]
			inspire_cond: "At least three fighters are out of action"
			inspiredVersion: {
				name: "Targor Inspired"
				warband: "Garrek's Reavers"
				movement: 5
				defence: { value: 1, char: "%DODGE%" }
				wounds: 2
				attacks: [
					{
					name: "Gore-Axe and Blade"
					range: 1
					value: 3
					char: "%SWORDS%"
					dmg: 2
					}
				]
			}
		}
		{
			name: "Arnulf"
			warband: "Garrek's Reavers"
			movement: 4
			defence: { value: 1, char: "%DODGE%" }
			wounds: 2
			attacks: [
				{
					name: "Piercing Blade and Axe"
					range: 1
					value: 2
					char: "%SWORDS%"
					dmg: 1
				}
			]
			inspire_cond: "At least three fighters are out of action"
			text: "<div><strong>Piercing Blade and Axe</strong></div> On a critical hit, this Attack action deals 1 extra damage."
			inspiredVersion: {
				name: "Arnulf Inspired"
				warband: "Garrek's Reavers"
				movement: 5
				defence: { value: 1, char: "%DODGE%" }
				wounds: 2
				attacks: [
					{
					name: "Piercing Blade and Axe"
					range: 1
					value: 3
					char: "%SWORDS%"
					dmg: 1
					}
				]
				text: "<div><strong>Piercing Blade and Axe</strong></div> On a critical hit, this Attack action deals 1 extra damage."
			}
		}
		{
			name: "Averon Stormsire"
			warband: "Stormsire's Cursebreakers"
			captain: true
			magic: 2
			movement: 3
			defence: { value: 1, char: "%SHIELD%" }
			wounds: 4
			attacks: [
				{
					name: "Incantor's Staff"
					range: 2
					value: 2
					char: "%HAMMER%"
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
				defence: { value: 2, char: "%SHIELD%" }
				wounds: 4
				attacks: [
					{
						name: "Incantor's Staff"
						range: 2
						value: 2
						char: "%HAMMER%"
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
			}
		}
		{
			name: "Vortemis the All-Seeing"
			warband: "Eyes of the Nine"
			captain: true
			magic: 2
			movement: 4
			defence: { value: 1, char: "%DODGE%" }
			wounds: 4
			attacks: [
				{
					name: "Tzeentchain Runestaff"
					range: 2
					value: 2
					char: "%HAMMER%"
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
				defence: { value: 2, char: "%DODGE%" }
				wounds: 4
				attacks: [
					{
						name: "Tzeentchain Runestaff"
						range: 2
						value: 2
						char: "%HAMMER%"
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
			defence: { value: 1, char: "%DODGE%" }
			wounds: 1
			attacks: [
				{
					name: "Magical Flames"
					range: 3
					value: 2
					char : "%SWORDS%"
					dmg: 1
				}
			]
			text: "<div><strong>Magical Flames</strong><div> <strong>Reaction :</strong> After the first time this fighter makes this Attack action in a phase, make another Attack action with this fighter. Do not place this fighter during set up. This fighter cannot be given Attack action upgrades, and cannot be Inspired. If this fighter is taken out of action, flip this fighter card over. It keeps any upgrades."
		}
	]
	
exportObj.fighters = () ->
	data = exportObj.fightersCommon()
	for index, fighter of data
		fighter.defence.char = fighter.defence.char.replace(/%SHIELD%/g, '<i class="icon-shield"></i>')
		fighter.defence.char = fighter.defence.char.replace(/%DODGE%/g, '<i class="icon-dodge"></i>')

		

		for index, attack of fighter.attacks
			attack.char = attack.char.replace(/%SWORDS%/g, '<i class="icon-sword"></i>')
			attack.char = attack.char.replace(/%HAMMER%/g, '<i class="icon-hammer"></i>')

		if fighter.inspiredVersion?
			fighter.inspire_cond = fighter.inspire_cond.replace(/%SHIELD%/g, '<i class="icon-shield"></i>')
			fighter.inspire_cond = fighter.inspire_cond.replace(/%CRIT%/g, "<span class = 'testclass'><strong class='icon-crit'></strong></span>")
			fighter.inspiredVersion.defence.char = fighter.inspiredVersion.defence.char.replace(/%SHIELD%/g, '<i class="icon-shield"></i>')
			fighter.inspiredVersion.defence.char = fighter.inspiredVersion.defence.char.replace(/%DODGE%/g, '<i class="icon-dodge"></i>')
			for index, attack of fighter.inspiredVersion.attacks
				attack.char = attack.char.replace(/%SWORDS%/g, '<i class="icon-sword"></i>')
				attack.char = attack.char.replace(/%HAMMER%/g, '<i class="icon-hammer"></i>')

	return data


exportObj = exports ? this

exportObj.gambits = ->
	[
		{
			setID: 1
			cardID: 10
			type: "ploy"
			name: "Blood Offering"
			warband: "Garrek's Reavers"
			text: "Choose a friendly fighter. They suffer 1 damage. Roll two extra attack dice for their first Attack action in the next activation."
		}
		{
			setID: 1
			cardID: 11
			type: "ploy"
			name: "Blood Rain"
			warband: "Garrek's Reavers"
			text: "All Attack actions in the next activation have the %SWORD% characteristic, even if they would normally have the %HAMMER% characteristic."
		}
		{
			setID: 1
			cardID: 12
			type: "ploy"
			name: "Boon of Khorne"
			warband: "Garrek's Reavers"
			text: "<strong>Reaction:</strong> Play this after a friendly fighter's Attack action that takes an enemy fighter out of action. Remove all wound tokens from one friendly fighter."
		}
		{
			setID: 1
			cardID: 13
			type: "ploy"
			name: "Desecrate"
			warband: "Garrek's Reavers"
			text: "Remove one objective that you hold from the battlefield."
		}
		{
			setID: 1
			cardID: 14
			type: "ploy"
			name: "Final Blow"
			warband: "Garrek's Reavers"
			text: "<strong>Reaction:</strong> Play this after an enemy fighter's Attack action that takes an adjacent friendly fighter out of action. Their attacker suffers 1 damage."
		}
		{
			setID: 1
			cardID: 15
			type: "ploy"
			name: "Fuelled by Slaughter"
			warband: "Garrek's Reavers"
			text: "<strong>Reaction:</strong> Play this after an Attack action or ploy that takes a fighter out of action. A friendly fighter can make an Attack action."
		}
		{
			setID: 1
			cardID: 16
			type: "ploy"
			name: "Insensate"
			warband: "Garrek's Reavers"
			text: "The first friendly fighter who suffers any amount of damage in the next activation only suffers one damage."
		}
		{
			setID: 1
			cardID: 17
			type: "ploy"
			name: "Khorne Calls"
			warband: "Garrek's Reavers"
			text: "Roll one extra attack dice for your first Attack action in the next activation."
		}
		{
			setID: 1
			cardID: 18
			type: "ploy"
			name: "Rebirth in Blood"
			warband: "Garrek's Reavers"
			text: "<strong>Reaction:</strong> Play this after an Attack action or ploy that takes your last surviving fighter out of action. Roll a defense dice. If you roll a Shield or Critical Hit remove all wound tokens from them, and place them on a starting hex in your territory."
		}
		{
			setID: 1
			cardID: 19
			type: "ploy"
			name: "Skulls for the Skull Throne!"
			warband: "Garrek's Reavers"
			text: "<strong>Reaction:</strong> Play this after a friendly fighter's Attack action that takes an enemy fighter out of action. Draw up to two power cards."
		}
		{
			setID: 1
			cardID: 39
			type: "ploy"
			name: "Heroic Guard"
			warband: "Steelheart's Champions"
			text: "Choose a friendly fighter and put them on Guard."
		}
		{
			setID: 1
			cardID: 40
			type: "ploy"
			name: "Peal of Thunder"
			warband: "Steelheart's Champions"
			text: "Choose any enemy fighter and push them one hex in any direction."
		}
		{
			setID: 1
			cardID: 41
			type: "ploy"
			name: "Righteous Zeal"
			warband: "Steelheart's Champions"
			text: "+1 Damage to the first Attack action with a Range of 1 or 2 in the next activation."
		}
		{
			setID: 1
			cardID: 42
			type: "ploy"
			name: "Sigmarite Wall"
			warband: "Steelheart's Champions"
			text: "Choose two adjacent friendly fighters and put them on Guard."
		}
		{
			setID: 1
			cardID: 43
			type: "ploy"
			name: "Stormforged Resistance"
			warband: "Steelheart's Champions"
			text: "Friendly fighters cannot be driven back by the first Attack action in the next activation."
		}
		{
			setID: 1
			cardID: 44
			type: "ploy"
			name: "Stormforged Tactics"
			warband: "Steelheart's Champions"
			text: "In the next activation make the following Reaction.<b> <strong>Reaction:</strong> After an enemy fighter's Attack action that fails, choose up to two friendly fighters and push them up to one hex each."
		}
		{
			setID: 1
			cardID: 45
			type: "ploy"
			name: "Tireless Assault"
			warband: "Steelheart's Champions"
			text: "Reaction: Play this after a friendly fighter's Attack action that fails. That fighter can make another Attack action that targets the same fighter."
		}
		{
			setID: 1
			cardID: 46
			type: "ploy"
			name: "Undaunted"
			warband: "Steelheart's Champions"
			text: "Reaction: Play this after an Attack action or ploy that takes a friendly fighter out of action leaving one surviving friendly fighter on the battlefield. Remove all wound tokens from the surviving fighter."
		}
		{
			setID: 1
			cardID: 47
			type: "ploy"
			name: "Unstoppable Strike"
			warband: "Steelheart's Champions"
			text: "The first Attack action in the next activation gains Cleave."
		}
		{
			setID: 1
			cardID: 48
			type: "ploy"
			name: "Valiant Attack"
			warband: "Steelheart's Champions"
			text: "Enemy fighters cannot support the target of the first Attack action in the next activation."
		}
		{
			setID: 1
			cardID: 308
			type: "ploy"
			name: "Anticipation"
			text: "Play this card after the final activation in an action phase. Name an objective card. If an opponent scores that objective in the end phase, score a glory point."
		}
		{
			setID: 1
			cardID: 309
			type: "ploy"
			name: "Blinding FLash"
			text: "<strong>Reaction:</strong> Play this during an Attack action with a Range of 3 or greater (before any dice are rolled). The Attacks characteristic of that Attack action is changed to %SWORDS% 1."
		}
		{
			setID: 1
			cardID: 310
			type: "ploy"
			name: "Confused Priorities"
			text: "Switch two objectives that are currently being held."
		}
		{
			setID: 1
			cardID: 311
			type: "ploy"
			name: "Confusion"
			text: "Choose two fighters that are adjacent to each other and switch them."
		}
		{
			setID: 1
			cardID: 312
			type: "ploy"
			name: "Cruel Taunt"
			text: "Choose an enemy fighter and roll an attack dice. On a roll of %HAMMER% or Critical Hit they are no longer Inspired, and cannot be Inspired this game."
		}
		{
			setID: 1
			cardID: 313
			type: "ploy"
			name: "Curious Inversion"
			text: "For the first Attack action in the next activation, %HAMMER% characteristics become %SWORDS% characteristics and vice versa, and %DODGE% characteristics become %SHIELD% characteristics and vice versa."
		}
		{
			setID: 1
			cardID: 314
			type: "ploy"
			name: "Darkness Descends"
			text: "The first Attack action in the next activation has a Range of 1."
		}
		{
			setID: 1
			cardID: 315
			type: "ploy"
			name: "Daylight Robbery"
			text: "Roll an attack dice. If you roll a %HAMMER% or %CRIT% take one of your opponent's unspent glory points."
		}
		{
			setID: 1
			cardID: 316
			type: "ploy"
			name: "Death Thrones"
			text: "<strong>Reaction:</strong> Play this card during an Attack action or ploy that will take a friendly fighter out of action. Choose an enemy fighter adjacent to the target. They suffer 1 damage."
		}
		{
			setID: 1
			cardID: 317
			type: "ploy"
			name: "Desperate Gambit"
			text: "When resolving the first Attack action in the next activation, you and your opponent roll off. The winner chooses whether the Attack action fails or succeeds."
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
			name: "A Worthy Skull"
			warband: "Garrek's Reavers"
			text: "Score this in an end phase if your warband took an enemy leader out of action in the preceding action phase."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 2
			name: "Blood for the Blood God!"
			warband: "Garrek's Reavers"
			text: "Score this immediately if three or more of your fighters made a Charge action in this phase."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 3
			name: "Coward!"
			warband: "Garrek's Reavers"
			text: "Score this immediately if an enemy fighter begins a Move action adjacent to one of your fighters and ends it adjacent to none of your fighters."
			glory: 4
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 4
			name: "Draw the Gaze of Khorne"
			warband: "Garrek's Reavers"
			text: "Score this immediately if your warband takes two or more enemy fighters out of action in this phase."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 5
			name: "It Begins"
			warband: "Garrek's Reavers"
			text: "Score this in an end phase if at least one fighter from each warband is out of action."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 6
			name: "Khorne Cares Not"
			warband: "Garrek's Reavers"
			text: "Score this in an end phase if five or more fighters are out of action."
			glory: 2
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 7
			name: "Khorne's Champion"
			warband: "Garrek's Reavers"
			text: "Score this in the third end phase if all fighters except one of your fighters are out of action."
			glory: 6
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 8
			name: "Let the Blood Flow"
			warband: "Garrek's Reavers"
			text: "Score this immediately if three or more of your fighters made a successful Attack action in this phase."
			glory: 2
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 9
			name: "There is Only Slaughter"
			warband: "Garrek's Reavers"
			text: "Score this in an end phase if no fighter is holding an objective."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 30
			name: "Awe-Inspiring"
			warband: "Steelheart's Champions"
			text: "Score this immediately if your warband has taken two or more fighters out of action in this phase."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 31
			name: "Cleanse"
			warband: "Steelheart's Champions"
			text: "Score this in an end phase if you hold all objectives in enemy territory."
			glory: 3
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 32
			name: "Consecrated Area"
			warband: "Steelheart's Champions"
			text: "Score this in an end phase if there are no enemy fighters adjacent to your fighters."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 33
			name: "Eternals"
			warband: "Steelheart's Champions"
			text: "Score this in the third end phase if none of your fighters are out of action."
			glory: 3
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 34
			name: "Immovable Object"
			warband: "Steelheart's Champions"
			text: "Score this in an end phase if the same friendly fighter has held the same objective at the end of two consecutive action phases."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 35
			name: "Lightning Strikes"
			warband: "Steelheart's Champions"
			text: "Score this immediately if an enemy fighter is taken out of action by a Charge action made by one of your fighters."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 36
			name: "Seize Ground"
			warband: "Steelheart's Champions"
			text: "Score this in an end phase if you hold an objective in enemy territory."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 37
			name: "Sigmar's Bulwark"
			warband: "Steelheart's Champions"
			text: "Score this in an end phase if none of your fighters suffered any damage in the preceding action phase."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 38
			name: "Slayers of Tyrants"
			warband: "Steelheart's Champions"
			text: "Score this in an end phase if your warband took an enemy leader out of action in the preceding action phase."
			glory: 1
			phase: scoring.endPhase
		}
		{
			setID: 1
			cardID: 233
			name: "Accept Inevitability"
			text: "Score this in the third end phase if all of your fighters are out of action."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 234
			name: "Advancing Strike"
			text: "Score this immediately when your warband takes an enemy fighter standing in enemy territory out of action."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 235
			name: "Alone in the Darkness"
			text: "Score this in an end phase if there are no adjacent fighters on the battlefield."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 236
			name: "Annihilation"
			text: "Score this in an end phase if all enemy fighters have been taken out of action."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 237
			name: "Assassinate"
			text: "Score this in an end phase if your warband took an enemy leader out of action in the preceding action phase."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 238
			name: "Balance of Power"
			text: "Score this immediately when making an Attack action if both the attacker and the target have two supporting fighters."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 239
			name: "Blooded"
			text: "Score this in an end phase if all of your surviving fighters (at least three) have at least one wound token."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 240
			name: "Bloodless"
			text: "Score this in an end phase if no fighter suffered any damage in the preceding action phase."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 241
			name: "Brawl"
			text: "Score this in an end phase if all friendly fighters (at least three) are adjacent to enemy fighters."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 242
			name: "Butchery"
			text: "Score this in an end phase if your warband took three or more enemy fighters out of action in the preceding action phase."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 243
			name: "Change of Tactics"
			text: "Score this immediately if a friendly fighter on Guard makes a Charge action."
			glory: 1
			phase: scoring.immediate
		}
		{
			setID: 1
			cardID: 244
			name: "Chosen Champion"
			text: "Score this in an end phase if a surviving friendly fighter has three or more upgrades."
			glory: 1
			phase: scoring.immediate
		}
	]


exportObj = exports ? this

exportObj.upgrades = ->
	[
		{
			setID: 1
			cardID: 20
			name: "Beserk Charge"
			warband: "Garrek's Reavers"
			text: "Both %SWORDS% and %HAMMER% symbols are successes when this fighter makes a Charge action."
			restriction: "Blooded Saek"
		}
		{
			setID: 1
			cardID: 21
			name: "Bloodslick"
			warband: "Garrek's Reavers"
			text: "+1 Defence."
			restriction: "Garrek Gorebeard"
		}
		{
			setID: 1
			cardID: 22
			name: "Deadly Spin"
			warband: "Garrek's Reavers"
			attacks: [
					{
						range: 1
						value: 3
						char: "%SWORDS%"
						dmg: 1
					}
				]
			text: "Targets adjacent enemy fighters - roll for each."
			restriction: "Targor"
		}
		{
			setID: 1
			cardID: 23
			name: "Ever-Advancing"
			warband: "Garrek's Reavers"
			text: "<strong>Reaction:</strong> When this fighter could be driven back during an Attack action (whether or not your opponent chooses to do so), you can instead push them one hex."
			restriction: "Garrek Gorebeard"
		}
		{
			setID: 1
			cardID: 24
			name: "Frenzy"
			warband: "Garrek's Reavers"
			text: "Roll an extra attack dice when this fighter makes a Charge action."
		}
		{
			setID: 1
			cardID: 25
			name: "Grisly Trophy"
			warband: "Garrek's Reavers"
			text: "When this fighter takes an enemy fighter out of action, gain 1 additional glory point."
			restriction: "Garrek Gorebeard"
		}
		{
			setID: 1
			cardID: 26
			name: "Testifying Howl"
			warband: "Garrek's Reavers"
			text: "<strong>Action:</strong> Push each adjacent enemy fighter one hex."
			restriction: "Karsus the Chained"
		}
		{
			setID: 1
			cardID: 27
			name: "Unstoppable Charge"
			warband: "Garrek's Reavers"
			text: "When this fighter makes a Charge action they can move through other fighters, but their move must end in an empty hex."
			restriction: "Blooded Saek"
		}
		{
			setID: 1
			cardID: 28
			name: "Whirlwind of Death"
			warband: "Garrek's Reavers"
			text: "+1 Damage to all Attack actions with a Range of 1 or 2."
			restriction: "Karsus the Chained"
		}
		{
			setID: 1
			cardID: 29
			name: "Wicked Blade"
			attacks: [
					{
						range: 1
						value: 3
						char: "%SWORDS%"
						dmg: 2
					}
				]
			warband: "Garrek's Reavers"
			text: "If you roll at least one Critical Hit this Attack action has Cleave."
			restriction: "Arnulf"
		}
		{
			setID: 1
			cardID: 49
			name: "Blessed by Sigmar"
			warband: "Steelheart's Champions"
			text: "+1 Wounds."
		}
		{
			setID: 1
			cardID: 50
			name: "Block"
			warband: "Steelheart's Champions"
			text: "<strong>Action:</strong> This fighter and all adjacent friendly fighters go on Guard."
			restriction: "Angharad Brightshield"
		}
		{
			setID: 1
			cardID: 51
			name: "Brave Strike"
			warband: "Steelheart's Champions"
			attacks: [
					{
						range: 1
						value: 2
						char: "%HAMMER%"
						dmg: 2
					}
				]
			text: "Roll an extra attack dice if there are no adjacent friendly fighters."
			restriction: "Obryn the Bold"
		}
		{
			setID: 1
			cardID: 52
			name: "Fatal Riposte"
			warband: "Steelheart's Champions"
			text: "<strong>Reaction:</strong> During an Attack action that targets this fighter and fails, roll an attack dice. On a roll of Hammer or Critical Hit this fighter cannot be driven back and they can make an Attack action. It must target the attacker.."
			restriction: "Severin Steelheart"
		}
		{
			setID: 1
			cardID: 53
			name: "Heroic Might"
			warband: "Steelheart's Champions"
			text: "This fighter's Attack action gains Cleave."
			restriction: "Severin Steelheart, Obryn the Bold"
		}
		{
			setID: 1
			cardID: 54
			name: "Heroic Stride"
			warband: "Steelheart's Champions"
			text: "<strong>Reaction:</strong> After an enemy fighter ends their activation within two hexes of this fighter, you can push this fighter one hex."
			restriction: "Severin Steelheart"
		}
		{
			setID: 1
			cardID: 55
			name: "Lightning Blade"
			warband: "Steelheart's Champions"
			attacks: [
					{
						range: 2
						value: 2
						char: "%HAMMER%"
						dmg: 1
					}
				]
			text: "On a critical hit, this Attack action has +1 Damage."
			restriction: "Severin Steelheart"
		}
		{
			setID: 1
			cardID: 56
			name: "Lightning Blast"
			warband: "Steelheart's Champions"
			text: "When they make a critical hit, this fighter also inflicts 1 damage on enemy fighters adjacent to the target's hex."
			restriction: "Obryn the Bold"
		}
		{
			setID: 1
			cardID: 57
			name: "Righteous Strike"
			warband: "Steelheart's Champions"
			attacks: [
					{
						range: 1
						value: 3
						char: "%HAMMER%"
						dmg: 2
					}
				]
			text: "<strong>Reaction:</strong> After this Attack action, if it failed and the target was an enemy leader, make this Attack action again."
			restriction: "Angharad Brightshield"
		}
		{
			setID: 1
			cardID: 58
			name: "Shield Bash"
			warband: "Steelheart's Champions"
			text: "<strong>Reaction:</strong> During an adjacent fighter's Attack action that targets this fighter and fails, this fighter cannot be driven back and you can push their attacker one hex."
			restriction: "Angharad Brightshield"
		}
		{
			setID: 1
			cardID: 373
			name: "A Destiny to Meet"
			text: "If this fighter is not out of action at the end of the third action phase, gain 1 additional glory point."
		}
		{
			setID: 1
			cardID: 374
			name: "Acrobatic"
			text: "If this fighter has a %DODGE% Defence characteristic or has a %SHIELD% Defence characteristic but is on Guard, roll an extra defence dice when they are the target of an Attack action."
		}
		{
			setID: 1
			cardID: 375
			name: "Army of One"
			text: "If this fighter is the last friendly fighter on the battlefield, they have +1 Defence and all of their Attack actions have +1 Dice"
		}
		{
			setID: 1
			cardID: 376
			name: "Awakened Weapon"
			text: "You can re-roll one attack dice each time this fighter makes an Attack action."
		}
		{
			setID: 1
			cardID: 377
			name: "Blessed Armour"
			text: "When you roll a %CRIT% for this fighter when they are targeted by an Attack action, remove one wound token from them before any damage is dealt."
		}
		{
			setID: 1
			cardID: 378
			name: "Concealed Weapon"
			text: "On a critical hit, this fighter's Attack actions with a Range of 1 have +2 Damage."
		}
		{
			setID: 1
			cardID: 379
			name: "Coordinated Attack"
			attacks: [
					{
						range: 1
						value: 2
						char: "%SWORDS%"
						dmg: 2
					}
				]
			text: "When making this Attack action, roll an extra attack dice for each other friendly fighter adjacent to the target."
		}
	]



exportObj = exports ? this

exportObj.warbands = ->
	[
		{
			name: "Steelheart's Champions"
			set: "Shadespire"
		}
		{
			name: "Garrek's Reavers"
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

	self.objectives = ko.observableArray(exportObj.objectives())
	self.gambits = ko.observableArray(exportObj.gambits())
	self.upgrades = ko.observableArray(exportObj.upgrades())
 

	self.test = ko.observable(exportObj.fighters()[0].name)


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
			self.showDeckView true

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