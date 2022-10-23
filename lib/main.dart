
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyAppsku(),
    );
  }
}


class MyAppsku extends StatefulWidget {
  const MyAppsku({Key? key}) : super(key: key);

  @override
  State<MyAppsku> createState() => _MyAppskuState();
}

class _MyAppskuState extends State<MyAppsku> {
  TextEditingController nilai = TextEditingController();
  TextEditingController pembagi = TextEditingController();
  var n,n1,p,p1;

  void hitung( var n, var p){
    var nilai =n, pembagi =p, hasil;
    hasil=nilai/pembagi;
    if(hasil%2==0){
      showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
      title: Text('Hasilnya adalah'),
      content: SizedBox(
        height: 200,
        child: Text('hasil pembaginya adalah $hasil = Genap') ,
        
        //Text('${nilai+p}'),
      ),
    ),);
    }else{
      showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
      title: Text('Hasilnya adalah'),
      content: SizedBox(
        height: 200,
        child: Text('hasil pembaginya adalah $hasil = Ganjil') ,
       
      ),
    ),);
    }
    
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text('Latihan ETS'),),
    body:Form(child: Container(
      child: Column(
        children: [
          //nilai 1
          Padding(padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: nilai,
            onChanged: (String nilai){
              n = nilai;
              n1=int.parse(n);
            },
            
            decoration: new InputDecoration(
              label: Text('Input nilai awal'),
              border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0) )
            ),
            
          ),
          ),
          //nilai 2
          Padding(padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: pembagi,
            onChanged: (String pembagi){
              p = pembagi;
              p1=int.parse(p);
            },
            
            decoration: new InputDecoration(
              label: Text('Input nilai pembagi'),
              border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0) )
            ),
            
          ),
          ),
          //Button hitung
          Padding(padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed:(){ hitung(n1,p1);
            // showDialog(context: context, builder: (BuildContext context )=>AlertDialog(
            //   title: Text('hasil'),
            //   content: SizedBox(
            //     height: 200,
            //     child: Text('halo'),
            //   ),
            // ),);
          }, child: Text('hitung')),),
          Row(
            children: [
              ElevatedButton(onPressed: (){}, child: Text('Ok')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){}, child: Text('cencel')),
              ),
            ],
          )
        ],
      ),
    ),)
   );
    
  }
}