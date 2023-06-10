 class Block_demoState {
  Block_demoState init() {
    return Block_demoState();
  }

  Block_demoState clone() {
    return Block_demoState();
  }
}
 class insitial extends Block_demoState{

   int s;
   insitial(this.s);
 }
class sum_state extends Block_demoState{

  int s;
  sum_state(this.s);
}
 class sub_state extends Block_demoState{

   int s;
   sub_state(this.s);
 }