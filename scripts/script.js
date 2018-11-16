// Class to represent a row in the seat reservations grid
function SeatReservation(name, initialMeal) {
    var self = this;
    self.name = name;
    self.meal = ko.observable(initialMeal);

    self.formattedPrice = ko.computed(function() {
        var price = self.meal().price;
        return price ? "$" + price.toFixed(2) : "None";        
    });    
}

// Overall viewmodel for this screen, along with initial state
function ReservationsViewModel() {
    var self = this;

    // Non-editable catalog data - would come from the server
    self.availableMeals = [
        { mealName: "Standard (sandwich)", price: 0 },
        { mealName: "Premium (lobster)", price: 34.95 },
        { mealName: "Ultimate (whole zebra)", price: 290 }
    ];    

    // Editable data
    self.seats = ko.observableArray([
        new SeatReservation("Steve", self.availableMeals[0]),
        new SeatReservation("Bert", self.availableMeals[0])
    ]);

    self.warbands = [
        {
          name: "Steelheart's Champions",
          set: "Shadespire",
          num_fighters: 3
        },
        {
          name: "Garricks's Reavers",
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
        }
      ]

      self.selectedWarband = ko.observable();
      self.selectedFighters = ko.observableArray(self.fighters);

      self.warNull = ko.computed(function(){
        //   return self.fighters;
        return typeof self.selectedWarband;
      });


      self.computedFighters = ko.computed(function(){
        //   return self.fighters;
        return self.selectedWarband.name;
      });

    // Computed data
    self.totalSurcharge = ko.computed(function() {
       var total = 0;
       for (var i = 0; i < self.seats().length; i++)
           total += self.seats()[i].meal().price;
       return total;
    });    

    // Operations
    self.addSeat = function() {
        self.seats.push(new SeatReservation("", self.availableMeals[0]));
    }
    self.removeSeat = function(seat) { self.seats.remove(seat) }
}

ko.applyBindings(new ReservationsViewModel());