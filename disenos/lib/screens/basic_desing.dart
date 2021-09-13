import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: AssetImage('assets/montain.jpg'),
        ),
        Title(),
        ButtonSection(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Text(
            'Adipisicing esse pariatur magna aliquip exercitation irure duis nostrud laboris laboris exercitation ex non. Esse magna incididunt adipisicing cillum quis voluptate qui. Incididunt incididunt exercitation consectetur culpa ut. Excepteur ut consequat incididunt consectetur. Pariatur et Lorem dolor officia irure est aute amet aliquip. Id cupidatat esse reprehenderit consectetur laborum.',
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    ));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomBottom(icon: Icons.call, text: 'CALL'),
          CustomBottom(icon: Icons.navigate_before, text: 'ROUTE'),
          CustomBottom(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomBottom({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen lake campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}
