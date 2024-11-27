#include <stdio.h>
int main(){
  struct s {
             signed int       b05:32;
           unsigned int       b06:32;
             signed short int b03:16;
           unsigned short int b04:16;
             signed char      b01:8;
           unsigned char      b02:8;
	   };
  struct v {
    struct s  u[10] ;
  } ;
  struct v  w;
  struct v *p;

  p=&w;
  p->u[9].b05=2147483647;

  p->u[9].b05=
  p->u[9].b01= 0;

  printf("%x\n",p->u[9].b05);
}
