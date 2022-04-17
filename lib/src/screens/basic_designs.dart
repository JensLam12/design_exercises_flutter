import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
	const BasicDesignScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Column(
				children: [
					//Landscape
					const Image( image: AssetImage('assets/landscape.jpg')),
					//Title widget
					const Title(),
					//ButtonSection
					const ButtonSection(),
					//Description
					Container(
						margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 10),
						child: const Text('Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Apline Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.')
					)
				],
			)
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
			margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 20),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: [
					Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: const [
							Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
							Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.black45),),
						],
					),
					Expanded(
						child: Container() 
					),
					const Icon(Icons.star, color: Colors.red,),
					const Text('41')
				],
			),
		);
	}
}

class ButtonSection extends StatelessWidget {
	const ButtonSection({
		Key? key,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
			margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 10 ),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceAround,
				children: const [
					CustomButton( text: 'CALL', icon: Icons.call ),
					CustomButton( text: 'ROUTE', icon: Icons.play_arrow),
					CustomButton( text: 'SHARE', icon: Icons.share ),
				]
			),
		);
	}
}

class CustomButton extends StatelessWidget {
	final String text;
	final IconData icon;
	
	const CustomButton({
		Key? key, 
		required this.text, 
		required this.icon,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Column(
			children: [
				Icon( icon, color: Colors.blue, size: 30),
				Text( text, style: const TextStyle( color: Colors.blue, fontWeight: FontWeight.bold) )
			],
		);
	}
}