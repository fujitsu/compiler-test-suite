#include <stdio.h>
int sub1( ) {
volatile int a=0,i;
for (i=0; i <12; i++) {
switch(i) {
  case 0:  a=a+10; break;
  case 1:  a=a+1; break;
  case 2:  a=a+2; break;
  case 3:  a=a+3; break;
  case 4:  a=a+4; break;
  case 5:  a=a+5; break;
  case 6:  a=a+6; break;
  case 7:  a=a+7; break;
  case 8:  a=a+8; break;
  case 9:  a=a+9; break;
  default: a=a+100;
}
}
  if (a== 255 ) printf(" (1) ok \n");
  else          printf(" (1) ng %d\n",a);
}
int sub2( ) {
volatile int a=0,i;
for (i=0; i <12; i++) {
switch(i) {
  case 1:  a=a+1; break;
  case 2:  a=a+2; break;
  case 3:  a=a+3; break;
  case 4:  a=a+4; break;
  case 5:  a=a+5; break;
  case 6:  a=a+6; break;
  case 7:  a=a+7; break;
  case 8:  a=a+8; break;
  case 9:  a=a+9; break;
  default: a=a+100;
}
}
  if (a== 345 ) printf(" (2) ok \n");
  else          printf(" (2) ng %d\n",a);
}
int sub3( ) {
volatile int a=0,i;
for (i=0; i <12; i++) {
switch(i) {
  case 0:  a=a+10; break;
  case 1:  a=a+1; break;
  case 2:  a=a+2; break;
  case 3:  a=a+3; break;
  case 4:  a=a+4; break;
  case 5:  a=a+5; break;
  case 6:  a=a+6; break;
  case 7:  a=a+7; break;
  case 8:  a=a+8; break;
  case 9:  a=a+9; break;
}
}
  if (a==  55 ) printf(" (3) ok \n");
  else          printf(" (3) ng %d\n",a);
}
int sub4( ) {
volatile int a=0,i;
for (i=0; i <12; i++) {
switch(i) {
  case 1:  a=a+1; break;
  case 2:  a=a+2; break;
  case 3:  a=a+3; break;
  case 4:  a=a+4; break;
  case 5:  a=a+5; break;
  case 6:  a=a+6; break;
  case 7:  a=a+7; break;
  case 8:  a=a+8; break;
  case 9:  a=a+9; break;
}
}
  if (a== 45 ) printf(" (4) ok \n");
  else          printf(" (4) ng %d\n",a);
}
int main( ) {
  sub1( ) ;
  sub2( ) ;
  sub3( ) ;
  sub4( ) ;
}
