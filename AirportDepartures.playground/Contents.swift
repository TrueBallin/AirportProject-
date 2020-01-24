import UIKit


//: ## 1. Create custom types to represent an Airport Departures display
//: ![Airport Departures](matthew-smith-5934-unsplash.jpg)
//: Look at data from [Departures at JFK Airport in NYC](https://www.airport-jfk.com/departures.php) for reference.
//:
//: a. Use an `enum` type for the FlightStatus (En Route, Scheduled, Canceled, Delayed, etc.)
//:
//: b. Use a struct to represent an `Airport` (Destination or Arrival)
//:
//: c. Use a struct to represent a `Flight`.
//:
//: d. Use a `Date?` for the departure time since it may be canceled.
//:
//: e. Use a `String?` for the Terminal, since it may not be set yet (i.e.: waiting to arrive on time)
//:
//: f. Use a class to represent a `DepartureBoard` with a list of departure flights, and the current airport
enum FlightStatus: String {
  case EnRoute
  case Scheduled
  case Canceled = "na"
  case Delayed
}


struct Airport {
  var placeName: String
    var code: String
}


struct Flight {
    let airline: String
    let flightNumber: String
    let destination: Airport
    let departure: Date?
    let terminal: String?
    let status: FlightStatus
}

class DepartureBoard {
   var currentAirport: String
   private (set) var departingFlights: [Flight?]
    
    init(currentAirport: String) {
        self.currentAirport = currentAirport
        self.departingFlights = []
    }
    func add(departingFlight: Flight) {
        departingFlights.append(departingFlight)
    }
}

let sloAirPort = Airport(placeName: "Lake Tahoe", code: "QQQ")

let flight1 = Flight(airline: "South West", flightNumber: "FF12", destination: sloAirPort,
                     departure: Date(), terminal: "QQ55", status: .Scheduled)

        var flight2 = Flight(airline: "Virgin", flightNumber: "FW23", destination: Airport(placeName: "Georgetown", code: "GEO"), departure: nil, terminal: nil, status: .Canceled)

        var flight3 = Flight(airline: "American Air", flightNumber: "HH56", destination: "New York City", departure: Date(), terminal: "GG^&", status: .EnRoute)
 

let todaysDepartures = DepartureBoard(currentAirport: "QQQ")

todaysDepartures.add(departingFlight: flight3)
todaysDepartures.add(departingFlight:  flight2)
todaysDepartures.add(departingFlight: flight1)

func printDepartures(flights: [Flight?]) {
    for departureBoard in todaysDepartures.departingFlights {
        if let departureBoard = flights {
            print("airline: \(departureBoard.airline) flight#: \(departureBoard.flightNumber) destination: \(departureBoard.destination) departure: \(departureBoard.departure ?? Date()) terminal: \(departureBoard.terminal ?? "") status: \(departureBoard.status) ")
    }
}
    printDepartures(flights: todaysDepartures.departingFlights)














//: ## 5. Add an instance method to your `DepatureBoard` class (above) that can send an alert message to all passengers about their upcoming flight. Loop through the flights and use a `switch` on the flight status variable.
//: a. If the flight is canceled print out: "We're sorry your flight to \(city) was canceled, here is a $500 voucher"
//:
//: b. If the flight is scheduled print out: "Your flight to \(city) is scheduled to depart at \(time) from terminal: \(terminal)"
//:
//: c. If their flight is boarding print out: "Your flight is boarding, please head to terminal: \(terminal) immediately. The doors are closing soon."
//:
//: d. If the `departureTime` or `terminal` are optional, use "TBD" instead of a blank String
//:
//: e. If you have any other cases to handle please print out appropriate messages
//:
//: d. Call the `alertPassengers()` function on your `DepartureBoard` object below
//:
//: f. Stretch: Display a custom message if the `terminal` is `nil`, tell the traveler to see the nearest information desk for more details.




//: ## 6. Create a free-standing function to calculate your total airfair for checked bags and destination
//: Use the method signature, and return the airfare as a `Double`
//:
//:     func calculateAirfare(checkedBags: Int, distance: Int, travelers: Int) -> Double {
//:     }
//:
//: a. Each bag costs $25
//:
//: b. Each mile costs $0.10
//:
//: c. Multiply the ticket cost by the number of travelers
//:
//: d. Call the function with a variety of inputs (2 bags, 2000 miles, 3 travelers = $750)
//:
//: e. Make sure to cast the numbers to the appropriate types so you calculate the correct airfare
//:
//: f. Stretch: Use a [`NumberFormatter`](https://developer.apple.com/documentation/foundation/numberformatter) with the `currencyStyle` to format the amount in US dollars.



