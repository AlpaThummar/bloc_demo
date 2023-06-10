import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'block_demo_bloc.dart';
import 'block_demo_event.dart';
import 'block_demo_state.dart';

class Block_demoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Block_demoBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<Block_demoBloc>(context);

    TextEditingController t1=TextEditingController();
    TextEditingController t2=TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Bloc Demo"),),
      body: Column(children: [
        TextField(controller: t1,),
        TextField(controller: t2,),
        ElevatedButton(onPressed: () {
          bloc.add(Sum_event(t1.text, t2.text));

        }, child: Text("Sum")),
        ElevatedButton(onPressed: () {
          bloc.add(Sub_event(t1.text, t2.text));
        }, child: Text("Sub")),
        BlocBuilder<Block_demoBloc,Block_demoState>(builder: (context, state) {
          if(state is sum_state){
            return Text("Sum${state.s}",style: TextStyle(fontSize: 15),);
          }{
            return Text("Sum=0",style: TextStyle(fontSize: 15),);
          }

        }, buildWhen: (previous, current) => current is sum_state,),

        BlocBuilder<Block_demoBloc,Block_demoState>(builder: (context, state) {
          if(state is sub_state){
            return Text("Sub${state.s}",style: TextStyle(fontSize: 15),);
          }else{
            return Text("Sub=0",style: TextStyle(fontSize: 15),);
          }

        },buildWhen: (previous, current) => current is sum_state),


      ]),
    );
  }
}

