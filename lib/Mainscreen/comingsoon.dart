import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(88, 24, 111, 1),
        title: Text(
          "This Service is not Avalabile Now",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body:     Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(
            child: IconButton(
                            onPressed: () {
                                   AwesomeDialog(
                                    
                                      btnOkColor: Colors.red,
                               barrierColor:Colors.red ,
                                      context: context,
                                      animType: AnimType.leftSlide,
                                      headerAnimationLoop: true,
                                      dialogType: DialogType.error,
                                      showCloseIcon: true,
                                      title: 'Serice is under developing',
                                   
                                      btnOkOnPress: () {
                                        debugPrint('OnClcik');
                                      },
                                      btnOkIcon: Icons.cancel,
                                      onDismissCallback: (type) {
                                        debugPrint(
                                            'Dialog Dissmiss from callback $type');
                                      },
                                    ).show();
                            },
                             icon: Icon( Icons.sos_outlined,
                             color: Colors.purple,
                             size: 38,
                             ),
                          ),
          ),
        ],
      ),
    );
  }
}
