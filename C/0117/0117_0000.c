#include <stdio.h>

void sub(){
  int cost_cutoff, success, give_up, phase,  null_count;
  for(;;){
    phase = 0;
    give_up = 0;
    cost_cutoff = 0;
    null_count = 0;
    while(!give_up) {
      if (phase == 0) {
	if (cost_cutoff == 0) {
	  cost_cutoff = 1;
	}
	else {
	  phase = 1;
	}
      }
      else {
	null_count++;
	give_up = (null_count >= 1);
      }
    }
  }
}
int main()
{
  printf("ok");
}
