
// Overall viewmodel for this screen, along with initial state
function CardViewerViewModel() {
  var self = this;

  this.showWarbandBrowser = ko.observable(true);
  this.showCardView = ko.observable(true);
  this.showDeckView = ko.observable(false);
  this.loggedIn = ko.observable(false);

  this.selectedWarband = ko.observable();
  this.selectedFighter = ko.observable();

  this.warbands = exportObj.warbands();

  self.computedFighters = ko.computed(function () {
    if (typeof self.selectedWarband() == "undefined") {
      return []
    } else {
      // return exportObj.fighters().filter(fighter => fighter.warband == self.selectedWarband().name);
      return exportObj.fighters().filter(function (fighter) {
        return fighter.warband == self.selectedWarband().name;
      });
    }

  });

  self.selectFighter = function (fighter) {
    if (typeof fighter != "undefined") {
      self.selectedFighter(fighter);
    }
  }


  this.ViewWarband = function () {

    if (this.showWarbandBrowser() == true) {
      this.showWarbandBrowser(false);
    } else {
      this.showWarbandBrowser(true);
    }
  };

  this.cardViewButton = function () {
    if (this.showCardView() == false) {
      this.showCardView(true);
      this.showDeckView(false);
    }
  };

  this.deckViewButton = function () {
    if (this.showDeckView() == false) {
      this.showCardView(false);
      this.showDeckView(true);
    }
  };

  this.logIn = function () {
    this.loggedIn(true);
  };

  this.logOut = function () {
    this.loggedIn(false);
  };


};



ko.applyBindings(new CardViewerViewModel());
