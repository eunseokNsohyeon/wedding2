import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding/constants/color.dart';
import 'package:wedding/models/contact_address_model.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset('assets/images/third.jpg', fit: BoxFit.cover),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: InkWell(
              onTap: () => {_showAddressModal(context)},
              child: Image.asset(
                'assets/images/third_button.png',
                scale: 2.5,
                fit: BoxFit.none,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> _showAddressModal(BuildContext context) {
    return showCupertinoDialog(
      useRootNavigator: true,
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 430, minWidth: 344),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '연락하기',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: TEXT_COLOR2,
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      ...groomContactAddresses.map(
                        (it) => _AddressTile.fromModel(model: it),
                      ),
                      const Divider(),
                      ...brideContactAddresses.map(
                        (it) => _AddressTile.fromModel(model: it),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _AddressTile extends StatelessWidget {
  final String division;
  final String name;
  final String phone;

  const _AddressTile({
    required this.division,
    required this.name,
    required this.phone,
  });

  factory _AddressTile.fromModel({required ContactAddressModel model}) {
    return _AddressTile(
      division: model.division,
      name: model.name,
      phone: model.phone,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(division, style: const TextStyle(color: TEXT_COLOR2)),
          ),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: TEXT_COLOR2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () async {
                    final Uri telLaunchUri = Uri(scheme: 'sms', path: phone);
                    await launchUrl(
                      telLaunchUri,
                      mode: LaunchMode.externalNonBrowserApplication,
                    );
                  },
                  child: const Icon(Icons.mail_rounded, color: TEXT_COLOR2),
                ),
                SizedBox(width: 12.0),
                InkWell(
                  onTap: () async {
                    final Uri telLaunchUri = Uri(scheme: 'tel', path: phone);
                    await launchUrl(
                      telLaunchUri,
                      mode: LaunchMode.externalNonBrowserApplication,
                    );
                  },
                  child: const Icon(Icons.phone, color: TEXT_COLOR2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
