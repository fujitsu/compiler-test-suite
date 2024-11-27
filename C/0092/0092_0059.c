
#include <stdio.h>
int main( ) {
  struct t {
            unsigned short int      a1:1;
            unsigned short int      a2:2;
            unsigned short int      a3:3;
            unsigned short int      a4:4;
            unsigned short int      a5:5;
            unsigned short int      a6:6;
            unsigned short int      a7:7;
            unsigned short int      a8:8;
           } x;
  static int value[8]={3,7,15,31,63,127,255,511};
  
  x.a1=value[0];
           if (x.a1==1  ) printf("**(1)** OK x.a1=%.16x\n",x.a1);
           else           printf("**(1)** NG x.a1=%.16x\n",x.a1);
  x.a2=value[1];
           if (x.a2==3  ) printf("**(2)** OK x.a2=%.16x\n",x.a2);
           else           printf("**(2)** NG x.a2=%.16x\n",x.a2);
  x.a3=value[2];
           if (x.a3==7  ) printf("**(3)** OK x.a3=%.16x\n",x.a3);
           else           printf("**(3)** NG x.a3=%.16x\n",x.a3);
  x.a4=value[3];
           if (x.a4==15 ) printf("**(4)** OK x.a4=%.16x\n",x.a4);
           else           printf("**(4)** NG x.a4=%.16x\n",x.a4);
  x.a5=value[4];
           if (x.a5==31  ) printf("**(5)** OK x.a5=%.16x\n",x.a5); 
           else           printf("**(5)** NG x.a5=%.16x\n",x.a5); 
  x.a6=value[5];
           if (x.a6==63 ) printf("**(6)** OK x.a6=%.16x\n",x.a6);
           else           printf("**(6)** NG x.a6=%.16x\n",x.a6);
  x.a7=value[6];
           if (x.a7==127 ) printf("**(7)** OK x.a7=%.16x\n",x.a7); 
           else           printf("**(7)** NG x.a7=%.16x\n",x.a7); 
  x.a8=value[7];
           if (x.a8==255) printf("**(8)** OK x.a8=%.16x\n",x.a8);
           else           printf("**(8)** NG x.a8=%.16x\n",x.a8);
} 
