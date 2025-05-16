class Flight {
  final String flightNumber;
  final String airlineCode;
  final String destination;
  final String scheduledTime;
  final String estimatedTime;
  final String terminal;
  final String gate;
  final List<Bag> bags;

  Flight({
    required this.flightNumber,
    required this.airlineCode,
    required this.destination,
    required this.scheduledTime,
    required this.estimatedTime,
    required this.terminal,
    required this.gate,
    required this.bags,
  });

  get reservationNumber => null;
}

class Bag {
  final String id;
  final String status;
  final String lastScannedTime;

  Bag({
    required this.id,
    required this.status,
    required this.lastScannedTime,
  });
}

List<Flight> flights = [
  Flight(
    flightNumber: '487242',
    airlineCode: 'EK 008 JFK',
    destination: 'New York John Kennedy',
    scheduledTime: '19:10',
    estimatedTime: '19:15',
    terminal: 'TERMINAL 3',
    gate: 'T3 BELT 11 STAND A03',
    bags: [
      Bag(
        id: '0176338186',
        status: 'Scanned',
        lastScannedTime: '30 Apr 18:43:22',
      ),
      Bag(
        id: '0176338184',
        status: 'Not Found',
        lastScannedTime: '',
      ),
      Bag(
        id: '0176338185',
        status: 'Not Found',
        lastScannedTime: '',
      ),
    ],
  ),
  Flight(
    flightNumber: '487242',
    airlineCode: 'EK 008 JFK',
    destination: 'New York John Kennedy',
    scheduledTime: '19:10',
    estimatedTime: '19:15',
    terminal: 'TERMINAL 3',
    gate: 'T3 BELT 11 STAND A03',
    bags: [
      Bag(
        id: '0176338186',
        status: 'Scanned',
        lastScannedTime: '30 Apr 18:43:22',
      ),
      Bag(
        id: '0176338184',
        status: 'Not Found',
        lastScannedTime: '',
      ),
      Bag(
        id: '0176338185',
        status: 'Not Found',
        lastScannedTime: '',
      ),
    ],
  ),
  Flight(
    flightNumber: '487242',
    airlineCode: 'EK 008 JFK',
    destination: 'New York John Kennedy',
    scheduledTime: '19:10',
    estimatedTime: '19:15',
    terminal: 'TERMINAL 3',
    gate: 'T3 BELT 11 STAND A03',
    bags: [
      Bag(
        id: '0176338186',
        status: 'Scanned',
        lastScannedTime: '30 Apr 18:43:22',
      ),
      Bag(
        id: '0176338184',
        status: 'Not Found',
        lastScannedTime: '',
      ),
      Bag(
        id: '0176338185',
        status: 'Not Found',
        lastScannedTime: '',
      ),
    ],
  ),
];