#include <stdio.h>
unsigned bitmapsz;
unsigned sub1() {return 1;}
unsigned sub2() {return 2;}
int main(){
unsigned rbot = sub1();
unsigned rtop = sub2();
int a=2;
bitmapsz =  (((int)(rbot - rtop)) >>  a ) >> 3;
printf("ok\n");
}
