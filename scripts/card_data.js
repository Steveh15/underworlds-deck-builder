
// Overall viewmodel for this screen, along with initial state
function WarbandViewModel() {
    var self = this;

    self.warbands = [
        {
            name: "Steelheart's Champions",
            set: "Shadespire",
            num_fighters: 3
        }
    ];

    self.fighters = [
        {
            name: "Severin Steelheart",
            warband: "Steelheart's Champions",
            movement: 3,
            defence: { value: 1, char: "%S%" },
            wounds: 4,
            attacks: [
                {
                    name: "Sigmarite Broadsword",
                    range: 1,
                    value: 2,
                    char: "%H%",
                    dmg: 3
                }
            ],
            inspire_cond: "This Fighter rolls a %S% or a %CRIT% when the target of an attack.",
            inspiredVersion: {
                name: "Steelheart Inspired",
                warband: "Steelheart's Champions",
                movement: 3,
                defence: { value: 2, char: "%S%" },
                wounds: 4,
                attacks: [
                    {
                        name: "Sigmarite Broadsword",
                        range: 1,
                        value: 2,
                        char: "%H%",
                        dmg: 3
                    },
                    {
                        name: "Mighty Swing",
                        range: 1,
                        value: 2,
                        char: "%H%",
                        dmg: 2
                    }
                ],
                text: "<div><strong> Mighty Swing</strong><div> Targets all adjacent enemies. Roll for each.",
                inspired: true
            }
        },
        {
            name: "Angharad Brightshield",
            warband: "Steelheart's Champions",
            movement: 3,
            defence: { value: 1, char: "%S%" },
            wounds: 4,
            attacks: [
                {
                    name: "Sigmarite Hammer",
                    range: 1,
                    value: 3,
                    char: "%H%",
                    dmg: 2
                }
            ],
            inspire_cond: "This Fighter rolls a %S% or a %CRIT% when the target of an attack.",
            inspiredVersion: {
                name: "Brightshield Inspired",
                warband: "Steelheart's Champions",
                movement: 3,
                defence: { value: 2, char: "%S%" },
                wounds: 4,
                attacks: [
                    {
                        name: "Sigmarite Hammer",
                        range: 1,
                        value: 3,
                        char: "%H%",
                        dmg: 2
                    },
                    {
                        name: "Furious Parry",
                        range: 1,
                        value: 2,
                        char: "%H%",
                        dmg: 1
                    }
                ],
                text: "<strong> <div>Furious Parry<div>Reaction: </strong> During an Attack action that targets this fighter and has failed, this fighter cannot be driven back and you can make this Attack action. It must target the attacker.",
                inspired: true
            }
        },
        {
            name: "Obryn the Bold",
            warband: "Steelheart's Champions",
            movement: 3,
            defence: { value: 1, char: "%S%" },
            wounds: 4,
            attacks: [
                {
                    name: "Sigmarite Grandhammer",
                    range: 1,
                    value: 2,
                    char: "%H%",
                    dmg: 3,
                    text: "Knockback 1"
                }
            ],
            inspire_cond: "This Fighter rolls a %S% or a %CRIT% when the target of an attack.",
            inspiredVersion: {
                name: "Obryn Inspired",
                warband: "Steelheart's Champions",
                movement: 3,
                defence: { value: 2, char: "%S%" },
                wounds: 4,
                attacks: [
                    {
                        name: "Sigmarite Grandhammer",
                        range: 1,
                        value: 2,
                        char: "%H%",
                        dmg: 3,
                        text: "Knockback 1"
                    },
                    {
                        name: "Overhead Strike",
                        range: 1,
                        value: 2,
                        char: "%H%",
                        dmg: 3,
                        text: "Cleave"
                    }
                ],
                inspired: true
            }
        }
    ]

    self.selectedWarband = ko.observable();
    self.selectedFighter = ko.observable(self.fighters[0]); //Helps if there's a fighter always selected even if a warband isnt
    self.selectedAttack = ko.observableArray(self.fighters[0].attacks);
    self.selectedInspiredAttack = ko.observableArray(self.fighters[0].inspiredVersion.attacks);
    self.computedFighters = ko.computed(function () {
        if (typeof self.selectedWarband() == "undefined") {
            return []
        } else {
            // var fighters = self.fighters.filter(fighter => fighter.warband == self.selectedWarband().name);
            // self.selectFighter = fighters[0]
            // return fighters;
            return self.fighters.filter(fighter => fighter.warband == self.selectedWarband().name);
        }

    });

    // this.selectedWarband.subscribe(function (newValue) {
    //   // self.selectedFighter(self.computedFighters[0]);
    //   self.selectedFighter(self.fighters[0]);
    // });


    self.selectedWarband(self.warbands[0]);

    self.selectFighter = function (fighter) {
        if (typeof fighter != "undefined") {
            self.selectedFighter(fighter);
            self.selectedAttack(fighter.attacks)
            self.selectedInspiredAttack(fighter.inspiredVersion.attacks)
        }
    }

}

ko.applyBindings(new WarbandViewModel());