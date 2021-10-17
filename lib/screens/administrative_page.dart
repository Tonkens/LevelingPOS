import 'package:flutter/material.dart';
import 'package:levelingpdv/screens/order_page.dart';

class AdministrativePage extends StatelessWidget {
  const AdministrativePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              child: const Text('DADOS DA EMPRESA'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdministrativePage()));
              },
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(1.0),
                          topLeft: Radius.circular(1.0),
                          bottomRight: Radius.circular(1.0),
                          bottomLeft: Radius.circular(1.0)))),
            ),
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              child: const Text('USUÁRIOS AUTORIZADOS'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(1.0),
                          topLeft: Radius.circular(1.0),
                          bottomRight: Radius.circular(1.0),
                          bottomLeft: Radius.circular(1.0)))),
            ),
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              child: const Text('CADASTRO DE PRODUTOS'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(1.0),
                          topLeft: Radius.circular(1.0),
                          bottomRight: Radius.circular(1.0),
                          bottomLeft: Radius.circular(1.0)))),
            ),
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              child: const Text('CADASTRO DE CLIENTES'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(1.0),
                          topLeft: Radius.circular(1.0),
                          bottomRight: Radius.circular(1.0),
                          bottomLeft: Radius.circular(1.0)))),
            ),
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              child: const Text('Sair'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderPage()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(1.0),
                          topLeft: Radius.circular(1.0),
                          bottomRight: Radius.circular(1.0),
                          bottomLeft: Radius.circular(1.0)))),
            ),
          ),
        ],
      ),
    );
  }
}
