import 'package:app_coleta_seletiva/app/module/models/solicitacoes_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class SolicitacoesColeta {

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  String id;
  String title;
  String description;
  String status;
  int metal;
  int papel;
  int plastico;
  int vidro1000;
  int vidro350;
  int vidro450;
  int vidro500;
  int vidro600;
  int vidro800;


  SolicitacoesColeta({required this.description, required this.title,required this.id, required this.metal, required this.papel, required this.plastico, required this.vidro1000, required this.vidro350, required this.vidro450, required this.vidro500, required this.vidro600, required this.vidro800, required this.status});

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  DocumentReference get firestoreRef => firestore.doc('solicitacoes/$id');
  Reference get storageRef => storage.ref().child('solicitacoes').child(id);

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value){
    _loading = value;
    notifyListeners();
  }

  Future<void> save() async {
    loading = true;

    final Map<String, dynamic> data = {
      '': [chave],
    };

    if(id == null){
      final doc = await firestore.collection('solicitacoes').add(data);
      id = doc.id;
    } else {
      await firestoreRef.update(data);
    }


    loading = false;
  }

  // List<Product> todasSolicitacoes = [];

  // SolicitacoesColeta(){
  //   carregasSolictacoesColeta();
  // }
  //
  //   return filteredProducts;
  // }
  //
  // Future<void> carregasSolictacoesColeta() async {
  //   final QuerySnapshot snapSolicitacoes =
  //   await firestore.collection('products')
  //       .where('status', isEqualTo: 'criado').get();
  //
  //   todasSolicitacoes = snapSolicitacoes.docs.map(
  //           (d) => Solicitacoes.fromDocument(d)).toList();
  //
  //   notifyListeners();
  // }

  // Future<void> carregasSolictacoesColetasAnalisadas() async {
  //   final QuerySnapshot snapSolicitacoesAnalisadas =
  //   await firestore.collection('products')
  //       .where('status', isEqualTo: 'analisada').get();
  //
  //   todasSolicitacoesAnalisadas = snapSolicitacoesAnalisadas.docs.map(
  //           (d) => Solicitacoes.fromDocument(d)).toList();
  //
  //   notifyListeners();
  // }


  static List<SolicitacoesColeta> generateItems(int numberOfItems) {
    return List<SolicitacoesColeta>.generate(numberOfItems, (int index) {
      return SolicitacoesColeta(
        id: index.toString() + '1',
        title: 'Solicitação #2824${index + 1}',
        description: 'Descrição da solicitação #2824${index + 1}',
      );
    });
  }

  @override
  String toString() {
    return 'Solicitacoes{id: $id, metal: $metal, papel: $papel, plastico: $plastico, vidro1000: $vidro1000,vidro350: $vidro350,vidro450: $vidro450, vidro500: $vidro500,vidro600: $vidro600,vidro800: $vidro800,}';
  }
}