#include <stdio.h>
unsigned bitmapsz;
unsigned sub() {return 2;}
int main(){
  unsigned rtop = sub();
  int a=2;
#pragma omp parallel
  bitmapsz =  (((int)(-rtop)) >>  a ) >> 3;

  printf("ok\n");
}
