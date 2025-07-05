import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding/components/widgets/bar.dart';
import 'package:wedding/components/widgets/contact.dart';
import 'package:wedding/components/widgets/gallery.dart';
import 'package:wedding/constants/color.dart';
import 'package:wedding/models/account_tile_model.dart';

class FourthWidget extends StatelessWidget {
  const FourthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        children: [
          _DDay(),
          SizedBox(height: 20),
          _FirstImage(),
          SizedBox(height: 20),
          _SecondImage(),
          SizedBox(height: 25),
          _MapButton(),
          Text(
            '원하시는 앱을 선택하시면 지도가 열립니다',
            style: TextStyle(color: TEXT_COLOR, fontSize: 12.0),
          ),
          SizedBox(height: 50),
          _ThirdImage(),
          SizedBox(height: 80),
          _FourthImage(),
          SizedBox(height: 50),
          BarWidget(),
          FamilyContact(
            division: '신랑',
            name: '최인권',
            accountInfoList: groomFamilyInfo,
          ),
          BarWidget(),
          FamilyContact(
            division: '신부',
            name: '안소현',
            accountInfoList: brideFamilyInfo,
          ),
          BarWidget(),
          SizedBox(height: 80),
          _GalleryImage(),
          Gallery(),
          SizedBox(height: 40),
          BarWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              '함께 해주신 모든 분들께 감사드립니다.',
              style: TextStyle(color: TEXT_COLOR, fontSize: 14.0),
            ),
          ),
          BarWidget(),
        ],
      ),
    );
  }
}

class _DDay extends StatelessWidget {
  const _DDay();

  @override
  Widget build(BuildContext context) {
    final now = DateUtils.dateOnly(DateTime.now());
    final weddingDay = DateTime(2025, 9, 6);

    final isToday = weddingDay.isAtSameMomentAs(now);
    final isBefore = weddingDay.isAfter(now);

    final text = isToday
        ? ' 오늘 결혼합니다'
        : isBefore
        ? ''
        : ' Welcome 유부월드';

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '은석 & 소현',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: TEXT_COLOR,
            ),
            children: [
              TextSpan(
                text: text,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: TEXT_COLOR,
                ),
              ),
              !isToday && isBefore
                  ? TextSpan(
                      text: ' 의 결혼식까지',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: TEXT_COLOR,
                      ),
                    )
                  : const TextSpan(),
              !isToday && isBefore
                  ? TextSpan(
                      text: ' ${weddingDay.difference(now).inDays}일',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                        color: TEXT_COLOR,
                      ),
                    )
                  : const TextSpan(),
              !isToday && isBefore
                  ? TextSpan(
                      text: ' 남았습니다.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: TEXT_COLOR,
                      ),
                    )
                  : const TextSpan(),
            ],
          ),
        ],
      ),
    );
  }
}

class _FirstImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/fourth_01.jpg', fit: BoxFit.cover);
  }
}

class _SecondImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/fourth_02.jpg', fit: BoxFit.cover);
  }
}

class _MapButton extends StatelessWidget {
  final naverAddress =
      'https://map.naver.com/p/entry/place/34585318?placePath=/home?entry=plt&from=map&fromPanelNum=1&additionalHeight=76&timestamp=202507052126&locale=ko&svcName=map_pcv5&searchType=place&lng=126.9340682&lat=37.3845205&c=15.00,0,0,0,dh';
  onTapNaverMap() async => await launchUrl(Uri.parse(naverAddress));

  final kakaoAddress = 'https://place.map.kakao.com/877653040';
  onTapKakaoMap() async => await launchUrl(Uri.parse(kakaoAddress));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: onTapNaverMap,
            child: Image.asset('assets/images/naver_map.png', scale: 2.5),
          ),
          InkWell(
            onTap: onTapKakaoMap,
            child: Image.asset('assets/images/kakao_map.png', scale: 2.5),
          ),
        ],
      ),
    );
  }
}

class _ThirdImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/fourth_03.jpg', fit: BoxFit.cover);
  }
}

class _FourthImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/fourth_04.jpg', fit: BoxFit.cover);
  }
}

class _GalleryImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/gallery.jpg', fit: BoxFit.cover);
  }
}
