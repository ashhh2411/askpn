
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/state.dart';
import '../../shared/component/component.dart';
import 'messages_screen.dart';
import 'muic.dart';

class ConnectionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AskPunCubit, AskPnuStates>(
      listener: (context, state){},
      builder: (context, state){
        var cubit =AskPunCubit.get(context);
        return Column(
          children: [
            Center(
              child: Container(
                height: 250,
                width: 250,
                child:
                const Image(
                  image: AssetImage('assets/images/icon.png',)
                  ,),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
                AskPunCubit.get(context).getAllUsers();
                 navigateTo(context, MessagesScreen());
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 230,
                    height: 75,
                    color: Colors.white,
                  ),
                  Container(width: 225,
                    height: 70,
                    color:const Color(0xff004080),
                    child:const Center(
                      child: Text(
                        'Message',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const  SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
                navigateTo(context, MusicScreen());
                // final player = AudioCache();
                // player.play('assets/music/voice.mp3');
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 230,
                    height: 75,
                    color: Colors.white,
                  ),
                  Container(width: 225,
                    height: 70,
                    color:const Color(0xff004080),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text(
                            'Sound',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.play_arrow,
                          size: 40,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
                cubit.openWhatsAppURL();
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 230,
                    height: 75,
                    color: Colors.white,
                  ),
                  Container(width: 225,
                    height: 70,
                    color:const Color(0xff004080),
                    child:const Center(
                      child: Text(
                        'Call',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
