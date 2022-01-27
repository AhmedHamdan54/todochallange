import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todochallange/pages/home/presentation/controllers/home_controller.dart';
import 'package:todochallange/pages/todo/icons_icons.dart';
import 'package:todochallange/pages/todo/presentation/controllers/todo_controller.dart';




var width;
var height;

class HomeView extends GetView<HomeController> {

  HomeView({Key? key}) : super(key: key);

  final HomeController homeController= Get.put(HomeController());
  final TodoController todoController= Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    width= MediaQuery.of(context).size.width;
    height= MediaQuery.of(context).size.height;
    final DateTime now = DateTime.now();
    String date = DateFormat('yMMMMd').format(now);

    return GetBuilder<TodoController>(
        builder: (controller) {
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/fondonoche2.jpg",)
                  )),
              child: SizedBox(
                width: width,
                height: height,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height*0.10,),
                            Text("Welcome, ${homeController.name}",
                              style: GoogleFonts.nunito(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: height*0.01,),
                            Text(date,
                              style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height*0.70,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: todoController.todoList.length,
                            itemBuilder: (BuildContext context, int index){
                              return Dismissible(
                                  key: UniqueKey(),
                                  onDismissed: (direction)=> controller.deleteTodo(index),
                                  child: Center(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          top: 10
                                      ),
                                      width: width*0.90,
                                      height: height*0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.30),
                                        borderRadius: BorderRadius.circular(15),

                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15,
                                            left: 15,
                                            right: 15
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(children: [
                                                  const Icon(Icons.notifications, color: Colors.white,size: 20,),
                                                  const SizedBox(width:8),
                                                  Text("Activities today",style: GoogleFonts.nunito(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.w600

                                                  ),),

                                                ],),
                                                Text(controller.todoList[index].date,style: GoogleFonts.nunito(
                                                    color: Colors.white.withOpacity(0.70),
                                                    fontWeight: FontWeight.bold
                                                ),),


                                              ],
                                            ),
                                            const SizedBox(height: 5,),
                                            Text(controller.todoList[index].text,style: GoogleFonts.nunito(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold

                                            ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ));
                            }
                        ),
                      )

                    ],
                  ),
                ),
              ),

            ),
            floatingActionButton: GestureDetector(
              onTap: ()=> Get.toNamed("/todo"),
              child: Container(
                margin: const EdgeInsets.only(
                    right: 20,
                    bottom: 40
                ),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow:const [
                      BoxShadow(color: Colors.black38,offset: Offset(0, 3), spreadRadius: 3, blurRadius: 5)
                    ]
                ),
                child: const Center(
                  child: Icon(IconsTab.list_add,color: Colors.white,),
                ),
              ),
            ),

          );
        }
    );
  }
}
