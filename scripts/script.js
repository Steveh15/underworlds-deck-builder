
// Overall viewmodel for this screen, along with initial state
function WarbandViewModel() {
    var self = this;

    self.warbands = [
        {
          name: "Steelheart's Champions",
          set: "Shadespire",
          num_fighters: 3
        },
        {
          name: "Garrick's Reavers",
          set: "Shadespire",
          num_fighters: 5
        },
        {
            name: "Sepulchral Guard",
            set: "Shadespire",
            num_fighters : 7
        }
    ];

    self.fighters = [
        {
          name: "Severin Steelheart",
          warband : "Steelheart's Champions",
          movement : 3,
          defence : {value : 1, char : "%S%"},
          wounds: 4,
          attacks : [
            {
              name : "Sigmarite Broadsword",
              range : 1,
              value : 2,
              char : "%H%",
              dmg : 3
            }
          ],
          inspire_cond : "This Fighter rolls a %S% or a %CRIT% when the target of an attack.",
          inspiredVersion :{
            name: "Steelheart Inspired",
            warband : "Steelheart's Champions",
            movement : 3,
            defence : {value : 2, char : "%S%"},
            wounds: 4,
            attacks : [
              {
                name : "Sigmarite Broadsword",
                range : 1,
                value : 2,
                char : "%H%",
                dmg : 3
              },
              {
                name : "Mighty Swing",
                range : 1,
                value : 2,
                char : "%H%",
                dmg : 2
              }
            ],
            text : "<strong> Mighty Swing:</strong> Targets all adjacent enemies. Roll for each.",
            inspired : true
          }
        },
        {
          name: "Angharad Brightshield",
          warband : "Steelheart's Champions",
          movement : 3,
          defence : {value : 1, char : "%S%"},
          wounds: 4,
          inspiredVersion :   {
            name: "Brightshield Inspired",
            warband : "Steelheart's Champions",
            movement : 3,
            defence : {value : 2, char : "%S%"},
            wounds: 4,
            inspired : true
          }
        },
        {
          name: "Obryn the Bold",
          warband : "Steelheart's Champions",
          movement : 3,
          defence : {value : 1, char : "%S%"},
          wounds: 4,
          inspiredVersion : {
            name: "Obryn Inspired",
            warband : "Steelheart's Champions",
            movement : 3,
            defence : {value : 2, char : "%S%"},
            wounds: 4,
            inspired : true
          }
        },
        {
          name: "Garrick Gorebeard",
          warband : "Garrick's Reavers",
          wounds: 4
        },
        {
          name: "Blooded Saek",
          warband : "Garrick's Reavers",
          wounds: 3
        },
        {
            name : "Sepulchral Warden",
            warband : "Sepulchral Guard",
            wounds : 4
        }
      ]

      self.selectedWarband = ko.observable();
      self.selectedFighter = ko.observable();
      self.selectedAttack = ko.observableArray();
      self.selectedInspiredAttack = ko.observableArray();
      self.computedFighters = ko.computed(function(){
        if(typeof self.selectedWarband() == "undefined"){
            return []
        } else {
            return self.fighters.filter(fighter => fighter.warband == self.selectedWarband().name);
        }
       
      });




      self.selectedWarband(self.warbands[0]);

      self.selectFighter = function(fighter){
        if(typeof fighter != "undefined"){
          self.selectedFighter(fighter);
          self.selectedAttack(fighter.attacks)
          self.selectedInspiredAttack(fighter.inspiredVersion.attacks)
        }
      }

}

ko.applyBindings(new WarbandViewModel());