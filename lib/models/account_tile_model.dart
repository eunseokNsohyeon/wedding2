class AccountTileModel {
  final String relationship;
  final String name;
  final String bankName;
  final String accountNumber;

  AccountTileModel({
    required this.relationship,
    required this.name,
    required this.bankName,
    required this.accountNumber,
  });
}

List<AccountTileModel> groomFamilyInfo = [
  AccountTileModel(
    relationship: '부',
    name: '최인권',
    bankName: '농협',
    accountNumber: '352-0963-6731-83',
  ),
  AccountTileModel(
    relationship: '모',
    name: '심금란',
    bankName: '국민',
    accountNumber: '66-9101-01-220746',
  ),
  AccountTileModel(
    relationship: '♥',
    name: '최은석',
    bankName: '국민',
    accountNumber: '04-7102-04-233559',
  ),
];

List<AccountTileModel> brideFamilyInfo = [
  AccountTileModel(
    relationship: '모',
    name: '윤득임',
    bankName: '농협',
    accountNumber: '817-12-120886',
  ),
  AccountTileModel(
    relationship: '♥',
    name: '안소현',
    bankName: '농협',
    accountNumber: '356-0607-5723-33',
  ),
];
