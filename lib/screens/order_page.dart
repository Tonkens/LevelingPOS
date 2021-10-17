import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelingpdv/screens/administrative_page.dart';
import 'package:levelingpdv/screens/login.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int noteRadio = 1;
  int printRadio = 3;

  createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("OBSERVAÇÃO"),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              Container(
                color: Colors.green,
                child: OutlinedButton(
                    child: Text(
                      'Salvar',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(customController.text.toString());
                    }),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('ORÇAMENTOS'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[400],
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
                    child: const Text('PRODUTOS'),
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
                    child: const Text('SALVAR'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
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
                    child: const Text('EXCLUIR ITEM'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
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
                    child: const Text('CLIENTES'),
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
                    child: const Text('LIMPAR TUDO'),
                    onPressed: () {},
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
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('SAIR'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
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
                Container(
                  margin: EdgeInsets.fromLTRB(153, 0, 0, 0),
                  child: SizedBox(
                    width: 60,
                    height: 50,
                    child: ElevatedButton(
                      child: Column(
                        children: <Widget>[
                          IconButton(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AdministrativePage()));
                              },
                              icon: Icon(Icons.settings))
                        ],
                      ),
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
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Código do produto'),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 265,
                      height: 53,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: Colors.white),
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            child: Text(
                              '  Tipo de Nota:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Radio(
                              value: 1,
                              groupValue: noteRadio,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() => noteRadio = 1);
                              }),
                          SizedBox(
                            child: Text('NFE 55'),
                          ),
                          Radio(
                              value: 2,
                              groupValue: noteRadio,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() => noteRadio = 2);
                              }),
                          SizedBox(
                            child: Text('NFCE 65'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      children: <Widget>[
                        Center(
                          child: Container(
                            width: 240,
                            height: 53,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.0),
                                color: Colors.white),
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Text(
                                    '  Impressora:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Radio(
                                    value: 3,
                                    groupValue: printRadio,
                                    activeColor: Colors.green,
                                    onChanged: (value) {
                                      setState(() => printRadio = 3);
                                    }),
                                SizedBox(
                                  child: Text(
                                    'Térmica',
                                  ),
                                ),
                                Radio(
                                    value: 4,
                                    groupValue: printRadio,
                                    activeColor: Colors.green,
                                    onChanged: (value) {
                                      setState(() => printRadio = 4);
                                    }),
                                SizedBox(
                                  child: Text('A4'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      children: <Widget>[
                        if (noteRadio == 2)
                          SizedBox(
                            width: 150,
                            height: 53,
                            child: ElevatedButton(
                              child: const Text(
                                'OBSERVAÇÃO',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                createAlertDialog(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(2.0),
                                          topLeft: Radius.circular(2.0),
                                          bottomRight: Radius.circular(2.0),
                                          bottomLeft: Radius.circular(2.0)))),
                            ),
                          ),
                      ],
                    ),
                  ),
                ])),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  height: MediaQuery.of(context).size.width * (0.425),
                  width: MediaQuery.of(context).size.height * (10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text('Item'),
                            SizedBox(width: 50),
                            Text('Quantidade'),
                            SizedBox(width: 50),
                            Text('Desconto'),
                            SizedBox(width: 50),
                            Text('Código'),
                            SizedBox(width: 50),
                            Text('Produto'),
                            SizedBox(width: 400),
                            Text('Valor'),
                            SizedBox(width: 60),
                            Text('Valor c/ Desconto'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
