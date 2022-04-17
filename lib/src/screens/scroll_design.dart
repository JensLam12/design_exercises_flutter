import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
	const ScrollScreen({Key? key}) : super(key: key);

    final boxDecoration = const BoxDecoration(
		gradient: LinearGradient(
			begin: Alignment.topCenter,
			end: Alignment.bottomCenter,
			stops: [0.5,0.5],
			colors: [
				Color(0xff5EE8C5),
				Color(0xff30BAD6)
			]
		)
	);

    @override
    Widget build(BuildContext context) {
		
		return Scaffold(
			backgroundColor: const Color(0xff30BAD6),
			body: Container(
				decoration: boxDecoration,
				child: PageView(
					physics: const BouncingScrollPhysics(),
					scrollDirection: Axis.vertical,
					children: const [
						Page1(),
						Page2(),
					],
				)
			),
		);
    }
}

class Page1 extends StatelessWidget {
	const Page1({
		Key? key,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Stack(
			children: const [
				//Background
				Background(),
				//Main Content - Column
				MainContent()
			],
		);
	}
}

class Background extends StatelessWidget {
	const Background({
		Key? key,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
			decoration: const BoxDecoration(
				color: Color(0xff30BAD6),
				image: DecorationImage(
					image: AssetImage('assets/scroll.png'),
					fit: BoxFit.cover
				)
			),
		);
	}
}

class MainContent extends StatelessWidget {
	const MainContent({
		Key? key,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		const textStyle = TextStyle( fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

		return SafeArea(
			bottom: false,
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
		  		crossAxisAlignment: CrossAxisAlignment.center,
				children: [
					const SizedBox( height: 40),
					const Text('11°C', style: textStyle ),
					const Text('Wednesday', style: textStyle),
					Expanded(child: Container() ),
					const Icon( Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
				],
			),
		);
	}
}

class Page2 extends StatelessWidget {
	const Page2({
		Key? key,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
			color: const Color(0xff30BAD6),
			child: Center(
				child: TextButton(
					onPressed: () {},
					child: const Padding(
						padding: EdgeInsets.symmetric( horizontal: 40),
						child: Text('Welcome', style: TextStyle( color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold) )
					),
					style: TextButton.styleFrom(
						backgroundColor: const Color(0XFF0098FA),
						shape: const StadiumBorder()
					),
				),
			),
		);
	}
}