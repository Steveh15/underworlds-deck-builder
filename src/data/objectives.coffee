
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

# console.log exportObj.objectives().filter (fighter) -> fighter.scoreTime == scoring.endPhase
