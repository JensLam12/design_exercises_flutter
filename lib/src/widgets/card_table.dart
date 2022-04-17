import 'dart:ui';

import 'package:designs/src/screens/screens.dart';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
	const CardTable({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Table(
			children: const [
				TableRow(
					children: [
						_SingleCard( color: Colors.blue, icon: Icons.border_all, title: 'General' ),
						_SingleCard( color: Colors.purple, icon: Icons.car_rental, title: 'Transport' ),
					]
				),
				TableRow(
					children: [
						_SingleCard( color: Colors.pinkAccent, icon: Icons.shop_2_outlined, title: 'Shopping' ),
						_SingleCard( color: Colors.orange, icon: Icons.copy_outlined, title: 'Bills' ),
					]
				),
				TableRow(
					children: [
						_SingleCard( color: Colors.blueAccent, icon: Icons.paste_outlined, title: 'Entertainment' ),
						_SingleCard( color: Colors.green, icon: Icons.arrow_back, title: 'Grocery' ),
					]
				),
				TableRow(
					children: [
						_SingleCard( color: Colors.red, icon: Icons.account_tree_outlined, title: 'Technology' ),
						_SingleCard( color: Colors.tealAccent, icon: Icons.add_box_outlined, title: 'Plushies' ),
					]
				),
			]
		);
	}
}

class _SingleCard extends StatelessWidget {
	final IconData icon;
	final Color color;
	final String title;

	const _SingleCard({
		Key? key, 
		required this.icon, 
		required this.color, 
		required this.title}
	) : super(key: key);

	@override
	Widget build(BuildContext context) {
		var column = Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				CircleAvatar(
					backgroundColor: color,
					child: Icon( icon, size: 35, color: Colors.white, ),
					radius: 30,
				),
				const SizedBox( height: 20),
				Text( title, style: TextStyle( color: color, fontSize: 18) )
			]
		);

		return _CardBackground(child: column);
	}
}


class _CardBackground extends StatelessWidget {
	final Widget child;
	const _CardBackground({Key? key, required this.child}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
			margin: const EdgeInsets.all(15),
			child: ClipRRect(
				borderRadius: BorderRadius.circular(20),
				child: BackdropFilter(
					filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
					child: Container(
						height: 180,
						decoration: BoxDecoration(
							color: const Color.fromRGBO(62, 66, 107, 0.7),
							borderRadius: BorderRadius.circular(20.0)
						),
						child: child,
					),
				),
			),
		);
	}
}