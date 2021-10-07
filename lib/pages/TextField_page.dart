import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final TextEditingController controller = TextEditingController();

  String? data = '';
  bool? autoFocus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(data.toString()),
          SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  // fitur
                  autocorrect: true,
                  autofocus: false,
                  enableSuggestions: true,
                  enableInteractiveSelection: true, //agar bisa di copas
                  enabled: true,
                  //obscureText: true, //untuk password
                  //obscuringCharacter: '*', //custom obsecure text
                  keyboardType: TextInputType.text, //type keyboard
                  readOnly: false,

                  // decoration
                  showCursor: true,
                  cursorColor: Colors.red,
                  textAlign: TextAlign.start,
                  textCapitalization: TextCapitalization.words, //jadi capital di awal kata
                  style: TextStyle(color: Colors.amber),        // text styling

                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Colors.black,
                    //icon: Icon(Icons.person, size: 30,),      // icon diluar
                    // mengaktifkan border
                    border: OutlineInputBorder(),

                    //styling border mode aktif
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    ),

                    // styling border mode blur
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    ),



                    //prefixIcon: Icon(Icons.person),              // icon di dalam
                    hintText: 'Masukkan Nama anda',                // placeholder
                    labelText: 'Full Name',
                    //suffixIcon: Icon(Icons.add_a_photo)            // icon di belakang
                    //prefix: Icon(Icons.add_alarm)
                  ),

                  // controller
                  controller: controller,
                  // onChanged: (val){
                  //   print(nama);
                  // },

                  onSubmitted: (val) {
                    setState(() {
                      data = val;
                    });
                  },

                  onEditingComplete: (){
                    print('kelar edit');
                  },
                )
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}