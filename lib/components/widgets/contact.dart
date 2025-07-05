import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wedding/constants/color.dart';
import 'package:wedding/models/account_tile_model.dart';

class FamilyContact extends StatefulWidget {
  final String division;
  final String name;
  final List<AccountTileModel> accountInfoList;

  const FamilyContact({
    super.key,
    required this.division,
    required this.name,
    required this.accountInfoList,
  });

  @override
  State<FamilyContact> createState() => _FamilyContactState();
}

class _FamilyContactState extends State<FamilyContact> {
  bool isExPanded = false;
  toggleExpand(bool value) => setState(() => isExPanded = value);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ExpansionPanelList(
          expandedHeaderPadding: EdgeInsets.zero,
          elevation: 0,
          expandIconColor: TEXT_COLOR,
          expansionCallback: (_, isExpanded) => toggleExpand(isExpanded),
          animationDuration: const Duration(milliseconds: 500),
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: isExPanded,
              backgroundColor: PRIMARY_COLOR,
              headerBuilder: (context, isExpanded) => Row(
                children: [
                  SizedBox(width: 24.0),
                  Text(
                    '${widget.division}측',
                    style: const TextStyle(fontSize: 14.0, color: TEXT_COLOR),
                  ),
                ],
              ),
              body: Column(
                children: widget.accountInfoList
                    .map(
                      (it) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: _AccountTile.fromModel(model: it),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _AccountTile extends StatelessWidget {
  final String relationship;
  final String name;
  final String bankName;
  final String accountNumber;

  const _AccountTile({
    required this.relationship,
    required this.name,
    required this.bankName,
    required this.accountNumber,
  });

  factory _AccountTile.fromModel({required AccountTileModel model}) {
    return _AccountTile(
      relationship: model.relationship,
      name: model.name,
      bankName: model.bankName,
      accountNumber: model.accountNumber,
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width > 380 ? 14.0 : 12.0,
      color: TEXT_COLOR,
    );

    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
      leading: Text(relationship, style: defaultTextStyle),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style: defaultTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 8.0),
          MediaQuery.of(context).size.width < 380
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(bankName, style: defaultTextStyle),
                    Text(accountNumber, style: defaultTextStyle),
                  ],
                )
              : Row(
                  children: [
                    Text(bankName, style: defaultTextStyle),
                    SizedBox(width: 8.0),
                    Text(accountNumber, style: defaultTextStyle),
                  ],
                ),
        ],
      ),
      trailing: InkWell(
        onTap: () async {
          await Clipboard.setData(ClipboardData(text: accountNumber)).then((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                showCloseIcon: true,
                closeIconColor: Colors.white,
                content: Text('계좌번호가 복사되었습니다.'),
              ),
            );
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: TEXT_COLOR),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text('복사', style: defaultTextStyle),
          ),
        ),
      ),
    );
  }
}
