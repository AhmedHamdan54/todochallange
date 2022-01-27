
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todochallange/pages/name/presentation/controllers/name_controller.dart';


class NameView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NameController());
    final TextEditingController textEditingController= TextEditingController();
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/fondodia2.jpg",)
                    ))),
            Container(
              width: width,
              height: height,
              child: Padding(
                padding: const EdgeInsets.only(

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.22,),
                    Center(
                      child: Text("Hi!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.01,),
                    Center(
                      child: Text("Can you tell us your name?",
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0,
                          bottom: 16.0,
                          left: 30.0,
                          right: 30.0
                      ),
                      child: Container(
                        child: TextFormField(

                            textAlign: TextAlign.center,
                            controller: textEditingController,
                            autofocus: true,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,

                                ),
                                hintText: 'Your name',

                                focusedBorder: new OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                filled: true
                            ),
                            style: TextStyle(
                                fontSize: 21.0,
                                color: Colors.white
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 1
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.01,),

                    Center(
                      child: GestureDetector(
                        onTap: (){
                          controller.saveName(textEditingController.text);
                        },
                        child: Container(
                          height: height*0.06,
                          width: width*0.50,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(
                            child: Text("That's me!", style: TextStyle(color: Colors.white70),),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
