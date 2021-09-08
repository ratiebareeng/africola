class Courier {
  final String name;
  final String contact;
  final String location;
  final String email;
  final String logoUrl;

  Courier(this.name, this.contact, this.location, this.email, this.logoUrl);
}

List<Courier> sampleCouriers = [
  Courier('ABC Farm Couriers', '+267 31698000', 'Notwane',
      'abcfarms@africola.bw', 'assets/images/courier_1.png'),
  Courier('Veggie Movers', '+267 39568778', 'Gaborone',
      'veggiemove4rs@africola.bw', 'assets/images/courier_2.png'),
  Courier('KgetsiYaTsie Couriers', '+267 31698000', 'Notwane',
      'ktsmoving@africola.bw', 'assets/images/courier_3.png')
];
