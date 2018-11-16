
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
          wounds: 3
        },
        {
          name: "Angharad Brightshield",
          warband : "Steelheart's Champions",
          wounds: 4
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

      self.computedFighters = ko.computed(function(){
        if(typeof self.selectedWarband() == "undefined"){
            return []
        } else {
            return self.fighters.filter(fighter => fighter.warband == self.selectedWarband().name);
        }
       
      });


      self.test = ko.observable(1);

      self.addOne = function(){
        self.test(self.test() + 1)
      }

}

function message() {
  console.log("Helasd");
}

ko.applyBindings(new WarbandViewModel());