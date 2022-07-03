package ars

class BookedFlightController {

    def index() { }
    def viewBookedFlight(){
        def book=BookedFlight.findAll();

        render(view:"bookedFlight",model:[b:book])
    }
    def viewMyBooking(){
        def user=session.user

        def flight=BookedFlight.findAllByUserId(user.id)

        render(view: "viewMyBooking",model:[f:flight])

    }
    def bookFlight(){
        def id=params.id;

        def flight=Flight.findById(id)

        render(view: "bookFlight",model:[f:flight])
    }
    def updateBookedFlight(){



        def flightNo=params.flightNo;
        def date=params.date;
        def timeOfDeparture=params.timeOfDeparture;
        def timeOfArrival=params.timeOfArrival;
        def source=params.source;
        def destination=params.destination;
        def totalSeats=params.totalSeats
        def price=params.price
        def remainingSeats=params.remainingSeats



            def user = session.user;


            def userId = user.id;
            def userName = user.name;

            BookedFlight bookedFlight = new BookedFlight();

            bookedFlight.flightNo = flightNo
            bookedFlight.date = date
            bookedFlight.source = source
            bookedFlight.destination = destination
            bookedFlight.timeOfArrival = timeOfArrival
            bookedFlight.timeOfDeparture = timeOfDeparture
            bookedFlight.totalSeats = Integer.parseInt(totalSeats)
            bookedFlight.price = Integer.parseInt(price)
            bookedFlight.userId = userId
            bookedFlight.userName = userName;

            bookedFlight.save()

            def flight = Flight.findByFlightNo(flightNo);

            flight.remainingSeat = Integer.parseInt(remainingSeats)
            flight.save()

            redirect(action: "viewMyBooking")
        }




    def cancelFlight(){
        def id=params.id;
        println("Id is:"+ id);
        def f=BookedFlight.get(id);
        def totalSeats=f.totalSeats;
        def flightNo=f.flightNo
        def flight=Flight.findByFlightNo(flightNo)
        def remainingSeat=flight.remainingSeat+totalSeats
        flight.remainingSeat=remainingSeat;
        flight.save();
        f.delete();
        redirect(action: "viewMyBooking");

    }


}
