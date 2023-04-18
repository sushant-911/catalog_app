import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Mytheme.creamColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red700.make(),
            ElevatedButton(
                    onPressed: (() {}),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Mytheme.darkblueColor),
                      shape: MaterialStateProperty.all(StadiumBorder()),
                    ),
                    child: "Add to cart".text.xl.make())
                .wh(130, 50)
          ],
        ).p24(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(
                  catalog.image,
                  colorBlendMode: BlendMode.src,
                )).h32(context),
            Expanded(
                child: VxArc(
              height: 10.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Mytheme.creamColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.bold.xl4
                        .color(Mytheme.darkblueColor)
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit, lectus in consequat dignissim, dolor est lacinia nulla, eu ultricies risus nulla id velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed dignissim augue vel odio tempor, eu malesuada metus tincidunt. Nunc bibendum aliquet blandit. Nulla aliquam, ante quis pharetra pulvinar, arcu nulla suscipit lectus, at ultrices nulla lorem at urna. Maecenas faucibus lacus velit, nec vestibulum leo maximus in. Sed bibendum aliquet feugiat. Donec sit amet dolor vitae nunc interdum imperdiet. Nunc id urna id sapien dictum maximus ac ut tellus."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .h16(context)
                        .p12(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
