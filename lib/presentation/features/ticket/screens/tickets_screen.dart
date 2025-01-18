import 'package:fc_kairat_app/presentation/common/widgets/section_title.dart';
import 'package:fc_kairat_app/presentation/features/ticket/widgets/match_head.dart';
import 'package:fc_kairat_app/presentation/themes/theme.dart';
import 'package:flutter/material.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Билеты'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            MatchHead(),
            SectionTitle(text: 'Предстоящие'),
            MatchItems(),
          ],
        ),
      ),
    );
  }
}

class MatchItems extends StatelessWidget {
  const MatchItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: [
        MatchItem(),
        SizedBox(height: 20),
        MatchItem(),
        SizedBox(height: 20),
        MatchItem(),
      ],
    );
  }
}

class MatchItem extends StatelessWidget {
  const MatchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.mainYellow,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.sizeOf(context).width - 30,
      height: 260,
      child: Column(
        children: [
          MatchItemHead(),
          SizedBox(height: 8),
          MatchItemAbout(),
          SizedBox(height: 10),
          MatchItemBeginTime(),
        ],
      ),
    );
  }
}

class MatchItemHead extends StatelessWidget {
  const MatchItemHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MatchItemTour(),
        MatchItemDate(),
      ],
    );
  }
}

class MatchItemTour extends StatelessWidget {
  const MatchItemTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://fckairat.com/uploads/images/kaz%208.png',
          width: 25,
          height: 25,
        ),
        const SizedBox(width: 10),
        Text(
          'Товарищеский матч'.toUpperCase(),
          style: const TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}

class MatchItemDate extends StatelessWidget {
  const MatchItemDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '29 января'.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'среда'.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class MatchItemAbout extends StatelessWidget {
  const MatchItemAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: MatchItemTeam(
            imageUrl:
                'https://fckairat.com/uploads/content/kajrat-image-8a2a15d9f6.png',
            teamName: 'Қайрат',
            cityName: 'Алматы',
          ),
        ),
        Expanded(
          flex: 2,
          child: MatchItemInfo(),
        ),
        Expanded(
          flex: 1,
          child: MatchItemTeam(
            imageUrl:
                'https://fckairat.com/uploads/content/borac-image-64aac99d3b.png',
            teamName: 'Борац',
            cityName: 'Баня-Лука, Босния и Герцеговина',
          ),
        ),
      ],
    );
  }
}

class MatchItemTeam extends StatelessWidget {
  final String imageUrl;
  final String teamName;
  final String cityName;

  const MatchItemTeam({
    super.key,
    required this.imageUrl,
    required this.teamName,
    required this.cityName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82,
      child: Column(
        children: [
          MatchItemTeamLogo(
            imageUrl: imageUrl,
          ),
          SizedBox(height: 10),
          MatchItemTeamName(
            text: teamName,
          ),
          MatchItemTeamCity(
            text: cityName,
          ),
        ],
      ),
    );
  }
}

class MatchItemTeamLogo extends StatelessWidget {
  final String imageUrl;
  const MatchItemTeamLogo({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Image.network(
        imageUrl,
        height: 90,
      ),
    );
  }
}

class MatchItemTeamName extends StatelessWidget {
  final String text;
  const MatchItemTeamName({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class MatchItemTeamCity extends StatelessWidget {
  final String text;
  const MatchItemTeamCity({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 9,
      ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.visible,
    );
  }
}

class MatchItemBeginTime extends StatelessWidget {
  const MatchItemBeginTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Начнется через 10 дней 11:34:43'.toUpperCase(),
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class MatchItemInfo extends StatelessWidget {
  const MatchItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          MatchItemInfoTime(),
          MatchItemInfoAddress(),
          MatchItemVersus(),
          SizedBox(height: 20),
          MatchItemTickets(),
        ],
      ),
    );
  }
}

class MatchItemInfoTime extends StatelessWidget {
  const MatchItemInfoTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '00:00',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class MatchItemInfoAddress extends StatelessWidget {
  const MatchItemInfoAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Турция, Белек, Titanic Deluxe'.toUpperCase(),
      style: TextStyle(
        fontSize: 10,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class MatchItemVersus extends StatelessWidget {
  const MatchItemVersus({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'VS',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: AppColors.mainYellow,
      ),
    );
  }
}

class MatchItemTickets extends StatelessWidget {
  const MatchItemTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ParallelogramClipper(),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainYellow,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.confirmation_number_outlined,
              color: AppColors.black,
            ),
            const SizedBox(width: 10),
            Text(
              "БИЛЕТЫ",
              style: TextStyle(
                color: AppColors.black,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParallelogramClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double skewOffset = 20.0;

    final path = Path();
    path.moveTo(skewOffset, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width - skewOffset, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
