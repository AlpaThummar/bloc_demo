abstract class Block_demoEvent {}

class InitEvent extends Block_demoEvent {}

class Sum_event  extends Block_demoEvent {

  String s1;
  String s2;
  Sum_event(this.s1,this.s2);

}
class Sub_event extends Block_demoEvent{
  String s1,s2;
  Sub_event(this.s1,this.s2);

}
