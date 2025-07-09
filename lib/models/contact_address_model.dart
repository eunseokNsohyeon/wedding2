class ContactAddressModel {
  final String division;
  final String name;
  final String phone;

  ContactAddressModel({
    required this.division,
    required this.name,
    required this.phone,
  });
}

List<ContactAddressModel> groomContactAddresses = [
  ContactAddressModel(division: '신랑 아버지', name: '최인권', phone: '010-9537-0091'),
  ContactAddressModel(division: '신랑 어머니', name: '심금란', phone: '010-5063-7773'),
  ContactAddressModel(division: '신랑', name: '최은석', phone: '010-8288-6538'),
];

List<ContactAddressModel> brideContactAddresses = [
  ContactAddressModel(division: '신부 어머니', name: '윤득임', phone: '010-4477-7017'),
  ContactAddressModel(division: '신부', name: '안소현', phone: '010-8082-7017'),
];
