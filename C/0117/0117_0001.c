#include <stdio.h>
#define BLACK 0X01
#define WHITE 0X02
#define OTHER 0X08
int main(){
  int cost_cutoff, success, give_up, phase,  null_count;
  unsigned char array[4] = {0X03, 0X02, 0X01, 0X08};
  int cnt;

  for(;;){
    phase = 0;
    give_up = 0;
    cost_cutoff = 0;
    null_count = 0;
    while(!give_up) {
      if (phase == 0) {

	for(cnt = 0; cnt < 4; cnt++)
	  {
	    if ((array[cnt] & BLACK) && (array[cnt] & WHITE))
	      printf("*OK* 1\n");
	    else if (!(array[cnt] & BLACK) && (array[cnt] & WHITE))
	      printf("*OK* 2\n");
	    else if ((array[cnt] & BLACK) && !(array[cnt] & WHITE))
	      printf("*OK* 3\n");
	    else
	      printf("*OK* 4\n");
	  }

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
	return 0;
      }
    }
  }
}
