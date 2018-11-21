
// Overall viewmodel for this screen, along with initial state
function CardViewerViewModel() {
  var self = this;

  this.showWarbandBrowser = ko.observable(true);
  this.showCardView = ko.observable(true);
  this.showDeckView = ko.observable(false);
  this.loggedIn = ko.observable(false);


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

  this.logInOut = function () {
    if (this.loggedIn() == false) {
      this.loggedIn(true);
    } else {
      this.loggedIn(false);
    }
  };


  this.logIn = function () {
    this.loggedIn(true);
  };


  this.logOut = function () {
    this.loggedIn(false);
  };

}


ko.applyBindings(new CardViewerViewModel());
