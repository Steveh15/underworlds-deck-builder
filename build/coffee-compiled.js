var CardViewerViewModel, cvm, exportObj, scoring;

exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

exportObj.fightersCommon = function() {
  return [
    {
      name: "Severin Steelheart",
      warband: "Steelheart's Champions",
      captain: true,
      movement: 3,
      defence: {
        value: 1,
        char: "%SHIELD%"
      },
      wounds: 4,
      attacks: [
        {
          name: "Sigmarite Broadsword",
          range: 1,
          value: 2,
          char: "%HAMMER%",
          dmg: 3
        }
      ],
      inspire_cond: "This fighter rolls a %SHIELD% or a %CRIT% when the target of an attack.",
      inspiredVersion: {
        name: "Steelheart Inspired",
        warband: "Steelheart's Champions",
        movement: 3,
        defence: {
          value: 2,
          char: "%SHIELD%"
        },
        wounds: 4,
        attacks: [
          {
            name: "Sigmarite Broadsword",
            range: 1,
            value: 2,
            char: "%HAMMER%",
            dmg: 3
          },
          {
            name: "Mighty Swing",
            range: 1,
            value: 2,
            char: "%HAMMER%",
            dmg: 2
          }
        ],
        text: "<div><strong> Mighty Swing</strong><div> Targets all adjacent enemies. Roll for each."
      }
    },
    {
      name: "Angharad Brightshield",
      warband: "Steelheart's Champions",
      movement: 3,
      defence: {
        value: 1,
        char: "%SHIELD%"
      },
      wounds: 4,
      attacks: [
        {
          name: "Sigmarite Hammer",
          range: 1,
          value: 3,
          char: "%HAMMER%",
          dmg: 2
        }
      ],
      inspire_cond: "This fighter rolls a %SHIELD% or a %CRIT% when the target of an attack.",
      inspiredVersion: {
        name: "Brightshield Inspired",
        warband: "Steelheart's Champions",
        movement: 3,
        defence: {
          value: 2,
          char: "%SHIELD%"
        },
        wounds: 4,
        attacks: [
          {
            name: "Sigmarite Hammer",
            range: 1,
            value: 3,
            char: "%HAMMER%",
            dmg: 2
          },
          {
            name: "Furious Parry",
            range: 1,
            value: 2,
            char: "%HAMMER%",
            dmg: 1
          }
        ],
        text: "<strong> <div>Furious Parry<div>Reaction: </strong> During an Attack action that targets this fighter and has failed, this fighter cannot be driven back and you can make this Attack action. It must target the attacker."
      }
    },
    {
      name: "Obryn the Bold",
      warband: "Steelheart's Champions",
      movement: 3,
      defence: {
        value: 1,
        char: "%SHIELD%"
      },
      wounds: 4,
      attacks: [
        {
          name: "Sigmarite Grandhammer",
          range: 1,
          value: 2,
          char: "%HAMMER%",
          dmg: 3,
          text: "Knockback 1"
        }
      ],
      inspire_cond: "This fighter rolls a %SHIELD% or a %CRIT% when the target of an attack.",
      inspiredVersion: {
        name: "Obryn Inspired",
        warband: "Steelheart's Champions",
        movement: 3,
        defence: {
          value: 2,
          char: "%SHIELD%"
        },
        wounds: 4,
        attacks: [
          {
            name: "Sigmarite Grandhammer",
            range: 1,
            value: 2,
            char: "%HAMMER%",
            dmg: 3,
            text: "Knockback 1"
          },
          {
            name: "Overhead Strike",
            range: 1,
            value: 2,
            char: "%HAMMER%",
            dmg: 3,
            text: "Cleave"
          }
        ]
      }
    },
    {
      name: "Garrek Gorebeard",
      warband: "Garrek's Reavers",
      captain: true,
      movement: 4,
      defence: {
        value: 1,
        char: "%DODGE%"
      },
      wounds: 4,
      attacks: [
        {
          name: "Blooddrinker Axe",
          range: 1,
          value: 2,
          char: "%HAMMER%",
          dmg: 2
        }
      ],
      inspire_cond: "At least three fighters are out of action",
      inspiredVersion: {
        name: "Garrek Inspired",
        warband: "Garrek's Reavers",
        movement: 5,
        defence: {
          value: 1,
          char: "%DODGE%"
        },
        wounds: 4,
        attacks: [
          {
            name: "Awakened Axe",
            range: 1,
            value: 2,
            char: "%HAMMER%",
            dmg: 3
          }
        ]
      }
    },
    {
      name: "Karsus the Chained",
      warband: "Garrek's Reavers",
      movement: 4,
      defence: {
        value: 1,
        char: "%DODGE%"
      },
      wounds: 3,
      attacks: [
        {
          name: "Chained Axe",
          range: 2,
          value: 3,
          char: "%SWORDS%",
          dmg: 1
        },
        {
          name: "Brutal Chop",
          range: 1,
          value: 3,
          char: "%SWORDS%",
          dmg: 2
        }
      ],
      inspire_cond: "At least three fighters are out of action",
      inspiredVersion: {
        name: "Karsus Inspired",
        warband: "Garrek's Reavers",
        movement: 5,
        defence: {
          value: 1,
          char: "%DODGE%"
        },
        wounds: 3,
        attacks: [
          {
            name: "Chained Axe",
            range: 2,
            value: 3,
            char: "%SWORDS%",
            dmg: 2
          },
          {
            name: "Savage Whirl",
            range: 1,
            value: 2,
            char: "%SWORDS%",
            dmg: 2
          }
        ],
        text: "<div><strong>Savage Whirl</strong></div> Targets all adjacent enemies - roll for each."
      }
    },
    {
      name: "Blooded Saek",
      warband: "Garrek's Reavers",
      movement: 4,
      defence: {
        value: 1,
        char: "%DODGE%"
      },
      wounds: 3,
      attacks: [
        {
          name: "Great Axe",
          range: 1,
          value: 2,
          char: "%HAMMER%",
          dmg: 3
        }
      ],
      inspire_cond: "At least three fighters are out of action",
      inspiredVersion: {
        name: "Saek Inspired",
        warband: "Garrek's Reavers",
        movement: 5,
        defence: {
          value: 1,
          char: "%DODGE%"
        },
        wounds: 3,
        attacks: [
          {
            name: "Great Axe",
            range: 1,
            value: 2,
            char: "%HAMMER%",
            dmg: 3,
            text: "Cleave"
          }
        ]
      }
    },
    {
      name: "Targor",
      warband: "Garrek's Reavers",
      movement: 4,
      defence: {
        value: 1,
        char: "%DODGE%"
      },
      wounds: 2,
      attacks: [
        {
          name: "Gore-Axe and Blade",
          range: 1,
          value: 2,
          char: "%SWORDS%",
          dmg: 1
        }
      ],
      inspire_cond: "At least three fighters are out of action",
      inspiredVersion: {
        name: "Targor Inspired",
        warband: "Garrek's Reavers",
        movement: 5,
        defence: {
          value: 1,
          char: "%DODGE%"
        },
        wounds: 2,
        attacks: [
          {
            name: "Gore-Axe and Blade",
            range: 1,
            value: 3,
            char: "%SWORDS%",
            dmg: 2
          }
        ]
      }
    },
    {
      name: "Arnulf",
      warband: "Garrek's Reavers",
      movement: 4,
      defence: {
        value: 1,
        char: "%DODGE%"
      },
      wounds: 2,
      attacks: [
        {
          name: "Piercing Blade and Axe",
          range: 1,
          value: 2,
          char: "%SWORDS%",
          dmg: 1
        }
      ],
      inspire_cond: "At least three fighters are out of action",
      text: "<div><strong>Piercing Blade and Axe</strong></div> On a critical hit, this Attack action deals 1 extra damage.",
      inspiredVersion: {
        name: "Arnulf Inspired",
        warband: "Garrek's Reavers",
        movement: 5,
        defence: {
          value: 1,
          char: "%DODGE%"
        },
        wounds: 2,
        attacks: [
          {
            name: "Piercing Blade and Axe",
            range: 1,
            value: 3,
            char: "%SWORDS%",
            dmg: 1
          }
        ],
        text: "<div><strong>Piercing Blade and Axe</strong></div> On a critical hit, this Attack action deals 1 extra damage."
      }
    },
    {
      name: "Averon Stormsire",
      warband: "Stormsire's Cursebreakers",
      captain: true,
      magic: 2,
      movement: 3,
      defence: {
        value: 1,
        char: "%SHIELD%"
      },
      wounds: 4,
      attacks: [
        {
          name: "Incantor's Staff",
          range: 2,
          value: 2,
          char: "%HAMMER%",
          dmg: 2
        }
      ],
      spells: [
        {
          name: "Fulmination",
          range: 3,
          dmg: 1
        }
      ],
      inspire_cond: "This fighter successfully casts a spell.",
      inspiredVersion: {
        name: "Stormsire Inspired",
        warband: "Stormsire's Cursebreakers",
        magic: 2,
        movement: 3,
        defence: {
          value: 2,
          char: "%SHIELD%"
        },
        wounds: 4,
        attacks: [
          {
            name: "Incantor's Staff",
            range: 2,
            value: 2,
            char: "%HAMMER%",
            dmg: 2
          }
        ],
        spells: [
          {
            name: "Fulmination",
            range: 3,
            dmg: 2
          }
        ]
      }
    },
    {
      name: "Vortemis the All-Seeing",
      warband: "Eyes of the Nine",
      captain: true,
      magic: 2,
      movement: 4,
      defence: {
        value: 1,
        char: "%DODGE%"
      },
      wounds: 4,
      attacks: [
        {
          name: "Tzeentchain Runestaff",
          range: 2,
          value: 2,
          char: "%HAMMER%",
          dmg: 2
        }
      ],
      spells: [
        {
          name: "Bolt of Change",
          range: 3,
          dmg: 1
        }
      ],
      inspire_cond: "This fighter makes a successful Attack action with a Range of 3 or more",
      text: "<div><strong>Action:</strong><div> If there is no friendly Blue Horror or Brimstone Horrors on the battlefield, place a friendly Blue Horror on any starting hex.",
      inspiredVersion: {
        name: "Vortemis the All-Seeing",
        warband: "Eyes of the Nine",
        captain: true,
        magic: 2,
        movement: 4,
        defence: {
          value: 2,
          char: "%DODGE%"
        },
        wounds: 4,
        attacks: [
          {
            name: "Tzeentchain Runestaff",
            range: 2,
            value: 2,
            char: "%HAMMER%",
            dmg: 2
          }
        ],
        spells: [
          {
            name: "Bolt of Change",
            range: 3,
            dmg: 2
          }
        ],
        text: "<div><strong>Action:</strong><div> If there is no friendly Blue Horror or Brimstone Horrors on the battlefield, place a friendly Blue Horror on any starting hex."
      }
    },
    {
      name: "Brimstone Horrors",
      warband: "Eyes of the Nine",
      movement: 3,
      defence: {
        value: 1,
        char: "%DODGE%"
      },
      wounds: 1,
      attacks: [
        {
          name: "Magical Flames",
          range: 3,
          value: 2,
          char: "%SWORDS%",
          dmg: 1
        }
      ],
      text: "<div><strong>Magical Flames</strong><div> <strong>Reaction :</strong> After the first time this fighter makes this Attack action in a phase, make another Attack action with this fighter. Do not place this fighter during set up. This fighter cannot be given Attack action upgrades, and cannot be Inspired. If this fighter is taken out of action, flip this fighter card over. It keeps any upgrades."
    }
  ];
};

exportObj.fighters = function() {
  var attack, data, fighter, index, ref, ref1;
  data = exportObj.fightersCommon();
  for (index in data) {
    fighter = data[index];
    fighter.defence.char = fighter.defence.char.replace(/%SHIELD%/g, '<i class="icon-shield"></i>');
    fighter.defence.char = fighter.defence.char.replace(/%DODGE%/g, '<i class="icon-dodge"></i>');
    ref = fighter.attacks;
    for (index in ref) {
      attack = ref[index];
      attack.char = attack.char.replace(/%SWORDS%/g, '<i class="icon-sword"></i>');
      attack.char = attack.char.replace(/%HAMMER%/g, '<i class="icon-hammer"></i>');
    }
    if (fighter.inspiredVersion != null) {
      fighter.inspire_cond = fighter.inspire_cond.replace(/%SHIELD%/g, '<i class="icon-shield"></i>');
      fighter.inspire_cond = fighter.inspire_cond.replace(/%CRIT%/g, "<span class = 'testclass'><strong class='icon-crit'></strong></span>");
      fighter.inspiredVersion.defence.char = fighter.inspiredVersion.defence.char.replace(/%SHIELD%/g, '<i class="icon-shield"></i>');
      fighter.inspiredVersion.defence.char = fighter.inspiredVersion.defence.char.replace(/%DODGE%/g, '<i class="icon-dodge"></i>');
      ref1 = fighter.inspiredVersion.attacks;
      for (index in ref1) {
        attack = ref1[index];
        attack.char = attack.char.replace(/%SWORDS%/g, '<i class="icon-sword"></i>');
        attack.char = attack.char.replace(/%HAMMER%/g, '<i class="icon-hammer"></i>');
      }
    }
  }
  return data;
};

exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

scoring = {
  endPhase: 1,
  thirdEndPhase: 2,
  immiediate: 3
};

exportObj.objectives = function() {
  return [
    {
      setID: 1,
      cardID: 1,
      name: "Something",
      glory: 1,
      faction: "Steelheat's Champions",
      scoreTime: scoring.endPhase
    },
    {
      setID: 1,
      cardID: 2,
      name: "Something Else",
      glory: 2,
      faction: "Steelheat's Champions",
      scoreTime: scoring.thirdEndPhase
    }
  ];
};

// exportObj.fighters().filter(fighter => fighter.warband == self.selectedWarband().name);

// console.log exportObj.objectives().filter (fighter) -> fighter.scoreTime == scoring.endPhase
exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

exportObj.warbands = function() {
  return [
    {
      name: "Steelheart's Champions",
      set: "Shadespire"
    },
    {
      name: "Garrek's Reavers",
      set: "Shadespire"
    },
    {
      name: "Stormsire's Cursebreakers",
      set: "Nightvault"
    },
    {
      name: "Eyes of the Nine",
      set: "Nightvault"
    }
  ];
};

CardViewerViewModel = function() {
  var self;
  self = this;
  self.showWarbandBrowser = ko.observable(true);
  self.showWarbandBrowser = ko.observable(true);
  self.showCardView = ko.observable(true);
  self.showDeckView = ko.observable(false);
  self.loggedIn = ko.observable(false);
  self.selectedFighter = ko.observable();
  self.deckName = ko.observable();
  self.allObjectives = ko.observableArray();
  self.filteredObjectives = ko.observableArray();
  self.deckObjectives = ko.observableArray();
  self.allPloys = ko.observableArray();
  self.filteredPloys = ko.observableArray();
  self.deckPloys = ko.observableArray();
  self.warbands = exportObj.warbands();
  self.selectedWarband = ko.observable();
  self.test = ko.observable(exportObj.fighters()[0].name);
  self.setURL = function(key, value) {
    var i, keyEn, kvp, newurl, valueEn, x;
    keyEn = encodeURI(key);
    valueEn = encodeURI(value);
    kvp = document.location.search.substr(1).split('&');
    i = kvp.length;
    while (i--) {
      x = kvp[i].split('=');
      if (x[0] === keyEn) {
        x[1] = valueEn;
        kvp[i] = x.join('=');
        break;
      }
    }
    if (i < 0) {
      kvp[kvp.length] = [keyEn, valueEn].join('=');
    }
    newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?' + kvp.join('&');
    window.history.pushState({
      path: newurl
    }, '', newurl);
  };
  // ripped from http://stackoverflow.com/questions/901115/how-can-i-get-query-string-values
  self.getParameterByName = function(name) {
    var regex, regexS, results;
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    regexS = "[\\?&]" + name + "=([^&#]*)";
    regex = new RegExp(regexS);
    results = regex.exec(window.location.search);
    if (results === null) {
      return "";
    } else {
      return decodeURIComponent(results[1].replace(/\+/g, " "));
    }
  };
  self.deckName.subscribe(function(newValue) {
    self.setURL('dn', newValue);
  });
  self.selectedWarband.subscribe(function(newValue) {
    if (typeof newValue === "undefined") {
      self.setURL('w', "");
    } else {
      self.setURL('w', newValue.name);
    }
  });
  self.computedFighters = ko.computed(function() {
    if (typeof self.selectedWarband() === "undefined") {
      return [];
    } else {
      return exportObj.fighters().filter(function(fighter) {
        return fighter.warband === self.selectedWarband().name;
      });
    }
  });
  self.selectFighter = function(fighter) {
    if (typeof fighter !== "undefined") {
      self.selectedFighter(fighter);
    }
  };
  self.viewWarband = function() {
    if (self.showWarbandBrowser() === true) {
      return self.showWarbandBrowser(false);
    } else {
      return self.showWarbandBrowser(true);
    }
  };
  self.cardViewButton = function() {
    if (self.showCardView() === false) {
      self.showCardView(true);
      return self.showDeckView(false);
    }
  };
  self.deckViewButton = function() {
    if (self.showDeckView() === false) {
      self.showCardView(false);
      return self.showDeckView(true);
    }
  };
  self.logIn = function() {
    return self.loggedIn(true);
  };
  self.logOut = function() {
    return self.loggedIn(false);
  };
  self.initFunc = function() {
    var deckNameParm, loadedWarband, warbandParm;
    deckNameParm = self.getParameterByName("dn");
    if (deckNameParm === "") {
      self.deckName("Unnamed Deck");
    } else {
      self.deckName(deckNameParm);
    }
    warbandParm = self.getParameterByName("w");
    if (warbandParm !== "") {
      loadedWarband = exportObj.warbands().filter(function(warband) {
        return warband.name === warbandParm;
      })[0];
      self.selectedWarband(loadedWarband);
    }
  };
  self.selectWarband = function(warbandName) {
    self.selectedWarband(exportObj.warbands().filter(function(warband) {
      return warband.name === warbandName;
    })[0]);
  };
  self.ShadespireWarbands = function(set) {
    return exportObj.warbands().filter(function(warband) {
      return warband.set === set;
    });
  };
};

cvm = new CardViewerViewModel();

ko.options.useOnlyNativeEvents = true;

ko.applyBindings(cvm);

cvm.initFunc();

//# sourceMappingURL=coffee-compiled.js.map
