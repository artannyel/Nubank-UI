import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:nubank_ui/components/button_icon.dart';
import 'package:nubank_ui/theme/custom_color.dart';
import 'package:nubank_ui/utils/icon_bar_code.dart';
import 'package:nubank_ui/utils/icon_credit_card.dart';
import 'package:nubank_ui/utils/icon_money.dart';
import 'package:nubank_ui/utils/icon_phone.dart';
import 'package:nubank_ui/utils/icon_pix.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool visibel = true;
  Widget buttonWithText({
    required Widget child,
    required String label,
    required Function? onTap,
  }) {
    return Column(
      children: [
        ButtonIcon(
          ontap: onTap,
          child: child,
          padding: EdgeInsets.all(20),
          borderRadius: BorderRadius.circular(55),
          backgroundColor: Colors.grey[200],
          highlightColor: Colors.grey[400],
        ),
        SizedBox(height: 10),
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          width: 55,
        ),
      ],
    );
  }

  Widget cardButton({
    required String label,
    required String info,
    required String labelButton,
  }) {
    return Container(
      alignment: Alignment.center,
      width: 260,
      height: 200,
      child: OutlinedButton(
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
            ),
            Text(
              info,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.4,
              ),
            ),
            Expanded(child: Container()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: CustomColor.primaryColor,
              ),
              child: Text(
                labelButton,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide.none,
          backgroundColor: Colors.grey[200],
          primary: Colors.black,
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          animationDuration: Duration(seconds: 0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: CustomColor.primaryColor,
      ),
    );
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Material(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: CustomColor.primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ButtonIcon(
                            ontap: () {},
                            child: Container(
                              height: 26,
                              width: 26,
                              child: Image.asset(
                                "assets/images/user.png",
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: CustomColor.secondColor,
                            borderRadius: BorderRadius.circular(30),
                            padding: EdgeInsets.all(12),
                          ),
                          Expanded(child: Container()),
                          ButtonIcon(
                            ontap: () {
                              setState(() {
                                visibel = !visibel;
                              });
                            },
                            child: Icon(
                              visibel
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          ButtonIcon(
                            ontap: () {},
                            child: Icon(
                              Icons.help_outline_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          ButtonIcon(
                            ontap: () {},
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: -5,
                                  child: Container(
                                    color: CustomColor.primaryColor,
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ],
                      ),
                      SizedBox(height: 28),
                      Text(
                        "Olá, Artannyel",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
                Material(
                  color: Colors.white,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.grey[200],
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Conta",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Icon(Icons.navigate_next_outlined)
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            "R\$ 106.584,57",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 4,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 24),
                        buttonWithText(
                          child: Container(
                            width: 30,
                            height: 30,
                            child: CustomPaint(
                              painter: IconPix(
                                color: IconTheme.of(context).color!,
                              ),
                            ),
                          ),
                          label: "Área Pix",
                          onTap: () {},
                        ),
                        SizedBox(width: 14),
                        buttonWithText(
                          child: Container(
                            width: 30,
                            height: 30,
                            child: CustomPaint(
                              painter: IconBarCode(
                                color: IconTheme.of(context).color!,
                              ),
                            ),
                          ),
                          label: "Pagar",
                          onTap: () {},
                        ),
                        SizedBox(width: 14),
                        buttonWithText(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                Icons.crop_16_9_sharp,
                                size: 30,
                              ),
                              Icon(
                                Icons.circle_outlined,
                                size: 7,
                              ),
                              Positioned(
                                child: Container(
                                  color: Colors.grey[200],
                                  child: Icon(
                                    Icons.arrow_upward,
                                    size: 13,
                                  ),
                                ),
                                bottom: 0,
                                right: 0,
                              )
                            ],
                          ),
                          label: "Transferir",
                          onTap: () {},
                        ),
                        SizedBox(width: 14),
                        buttonWithText(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                Icons.crop_16_9_sharp,
                                size: 30,
                              ),
                              Icon(
                                Icons.circle_outlined,
                                size: 7,
                              ),
                              Positioned(
                                child: Container(
                                  color: Colors.grey[200],
                                  child: Icon(
                                    Icons.arrow_downward,
                                    size: 13,
                                  ),
                                ),
                                bottom: 0,
                                right: 0,
                              )
                            ],
                          ),
                          label: "Depositar",
                          onTap: () {},
                        ),
                        SizedBox(width: 14),
                        buttonWithText(
                          child: Container(
                            child: CustomPaint(
                              painter: IconPhone(
                                color: IconTheme.of(context).color!,
                              ),
                            ),
                            height: 30,
                            width: 30,
                          ),
                          label: "Recarga de celular",
                          onTap: () {},
                        ),
                        SizedBox(width: 14),
                        buttonWithText(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              Container(
                                child: CustomPaint(
                                  painter: IconMoney(
                                    color: IconTheme.of(context).color!,
                                  ),
                                ),
                                height: 30,
                                width: 30,
                              ),
                              Positioned(
                                child: Icon(
                                  Icons.attach_money_rounded,
                                  size: 20,
                                ),
                                top: 4,
                              ),
                            ],
                          ),
                          label: "Cobrar",
                          onTap: () {},
                        ),
                        SizedBox(width: 14),
                        buttonWithText(
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 30,
                          ),
                          label: "Doação",
                          onTap: () {},
                        ),
                        SizedBox(width: 14),
                        buttonWithText(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                Icons.language_outlined,
                                size: 30,
                              ),
                              Positioned(
                                child: Container(
                                  color: Colors.grey[200],
                                  child: Icon(
                                    Icons.arrow_upward,
                                    size: 13,
                                  ),
                                ),
                                bottom: 0,
                                right: 0,
                              ),
                            ],
                          ),
                          label: "Transferir internac.",
                          onTap: () {},
                        ),
                        SizedBox(width: 24),
                      ],
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  child: ButtonIcon(
                    ontap: () {},
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child: CustomPaint(
                            painter: IconCreditCard(
                              color: IconTheme.of(context).color!,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Meus cartões",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: Colors.grey[200],
                    highlightColor: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                    padding: EdgeInsets.all(16),
                  ),
                ),
                Divider(
                  thickness: 2.5,
                  height: 0,
                  color: Colors.grey[200],
                ),
                ButtonIcon(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  ontap: () {},
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child: CustomPaint(
                            painter: IconCreditCard(
                              color: IconTheme.of(context).color!,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Cartão de crédito",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(Icons.navigate_next_outlined)
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Fatura atual",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "R\$ 10.058,69",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Limite disponível de R\$ 50.000,00",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  highlightColor: Colors.grey[200],
                ),
                Divider(
                  thickness: 2.5,
                  height: 0,
                  color: Colors.grey[200],
                ),
                ButtonIcon(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  ontap: () {},
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          size: 30,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Seguro de vida",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(Icons.navigate_next_outlined)
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Conheça Nubank Vida: um seguro simples que cabe no bolso.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  highlightColor: Colors.grey[200],
                ),
                Divider(
                  thickness: 2.5,
                  height: 0,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Text(
                    "Descubra mais",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 16,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 24),
                        cardButton(
                          label: "Indique seus amigos",
                          info:
                              "Mostre aos seus amigos é fácil ter uma vida sem burocracia.",
                          labelButton: "Indicar amigos",
                        ),
                        SizedBox(width: 16),
                        cardButton(
                          label: "WhatsApp",
                          info:
                              "Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa.",
                          labelButton: "Quero conhecer",
                        ),
                        SizedBox(width: 24),
                      ],
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                //Gambiarra para quando a rolagem chegar ao final ficar branca kkkk
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1.5,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 4,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
