package ars

class FlightController {

    def index() { }

    def addFlight(){
        render(view: "addFlight");
    }

    def add(){
        def flightNo=params.flightNo;
        def source=params.source;
        def destination=params.destination;
        def timeOfDeparture=params.timeOfDeparture;
        def timeOfArrival=params.timeOfArrival;
        def price=params.price;
        def date=params.date;
        def capacity=params.capacity;
        def remainingSeat=capacity;

        Flight flight=new Flight();

        flight.flightNo=flightNo;
        flight.source=source;
        flight.destination=destination;
        flight.timeOfDeparture=timeOfDeparture;
        flight.timeOfArrival=timeOfArrival;
        flight.date=date;
        flight.price=Integer.parseInt(price);
        flight.capacity=Integer.parseInt(capacity);
        flight.remainingSeat=Integer.parseInt(remainingSeat);

        flight.save();

        redirect(action: "viewFlight");



    }

    def viewFlight(){
        def flight=Flight.findAll();
        def user=session.user;
        render(view:"viewFlight",model:[f:flight,u:user]);

    }
    def editFlight(){
        def id=params.id;

        def flight=Flight.findById(Integer.parseInt(id));

        render(view:"editFlight",model: [f:flight]);

    }
    def updateFlight(){

        println params.id
        def flight=Flight.findById(params.id)

        println(flight.source)
        println(params)

        def price=params.price;
        println "price"+price
        def capacity=params.capacity;
        println "capacity"+capacity
        def remainingSeat=params.remainingSeat;
        println "remaining"+remainingSeat;

        flight.flightNo=params.flightNo;
        flight.source=params.source;
        flight.destination=params.destination;
        flight.date=params.date;
        flight.timeOfDeparture=params.timeOfDeparture;
        flight.timeOfArrival=params.timeOfArrival;
        flight.price=Integer.parseInt(price)
        flight.capacity=Integer.parseInt(capacity)
        flight.remainingSeat=Integer.parseInt(remainingSeat)

        flight.save(failOnError: true);

        redirect(action: "viewFlight")
    }

    def deleteFlight(){
        def id=params.id;

        println("Id is:"+ id);
        def f=Flight.findByFlightNo(id);
        f.delete();
        def b=BookedFlight.findByFlightNo(id);
        if(b!=null) {
            b.delete();
        }
        redirect(action: "viewFlight");
    }

    def searchFlight(){
        def role =session.user.role
        println "role:"+role
        render(view: "searchFlight",model:[r:role])
    }
    def searchByFlightNo(){

        render (view:"searchByFlightNo")
    }
    def searchByFlightNo1(){
        def flightNo=params.flightNo;

        def flight=Flight.findByFlightNo(flightNo);

        def user=session.user;
        render(view:"viewFlight",model:[f:flight,u:user])
    }
    def searchBySource(){
        def flight=Flight.findAll();
        def source=flight.source;
        println "source:"+source
        render(view:"searchBySource",model:[f:flight])
    }
    def searchBySource1(){

        def source=params.source;
        println "source:"+source

        def flight=Flight.findAllBySource(source);

        def user=session.user;
        render(view:"viewFlight",model:[f:flight,u:user])
    }
    def searchBySourceAndDestination(){
        render(view:"searchBySourceAndDestination")
    }
    def searchBySourceAndDestination1(){
        def source=params.source;
        def destination=params.destination;
        if(source==destination){

            redirect(action: "searchBySourceAndDestination")
        }
        else {
            def flight = Flight.findAllBySourceAndDestination(source, destination)
            def user = session.user;
            render(view: "viewFlight", model: [f: flight, u: user])
        }
    }
    def searchBySourceDateAndDestination(){
       render(view:"searchBySourceDateAndDestination")
    }
    def searchBySourceDateAndDestination1() {
        def date = params.date;
        def source = params.source;
        def destination = params.destination;
        if (source == destination) {
                    redirect(action:"searchBySourceDateAndDestination")
        } else {

            def flight = Flight.findAllBySourceAndDateAndDestination(source, date, destination)

            def user = session.user;
            render(view: "viewFlight", model: [f: flight, u: user])
        }
    }
    def updatePrice(){
        def v=params.v
        def v1=params.v1

        println "flightNo:"+v1
        def flight=Flight.findByFlightNo(v1)
        def p=flight.price
        println "price:"+p


        def total=Integer.parseInt(v)*p;
        println "total:"+total

        render total;
    }

    def updateRemainingSeats(){
        def v=params.v
        def v1=params.v1
        println "flightno:"+v1
        def flight=Flight.findByFlightNo(v1)
        def r1=flight.remainingSeat
        println "remaining:"+r1
        def r=flight.remainingSeat

        def total=r-Integer.parseInt(v);
        render total;
    }



}
