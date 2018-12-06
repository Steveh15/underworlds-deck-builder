
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

