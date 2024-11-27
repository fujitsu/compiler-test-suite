
#include <stdio.h>

#if defined(INT64)
#define int __int32
#endif
int main(){
  struct t {
           signed   char      b01:1;
           unsigned char      b02:2;
           signed   short     b03:3;
           unsigned short     b04:4;
           signed   int       b05:5;
           unsigned int       b06:6;
  } x;
  struct s {
           signed   char      b01:8;
           unsigned char      b02:8;
           signed   short     b03:16;
           unsigned short     b04:16;
           signed   int       b05:32;
           unsigned int       b06:32;
  } y;
  char      i1;
  short     i2;
  int       i4;
            i1=1;i2=0;i4=1;
  x.b01=i1; 
            if (x.b01==-1) printf("**(01)** OK\n");
            else          printf("**(01)** NG x.b01=%1x\n",x.b01);
  x.b02=i1;
            if (x.b02==1) printf("**(02)** OK x.b02=%1x\n",x.b02);
            else          printf("**(02)** NG x.b02=%1x\n",x.b02);
  x.b03=i1;
            if (x.b03==1) printf("**(03)** OK x.b03=%.4x\n",x.b03);
            else          printf("**(03)** NG x.b03=%.4x\n",x.b03);
  x.b04=i1;
            if (x.b04==1) printf("**(04)** OK x.b04=%.4x\n",x.b04);
            else          printf("**(04)** NG x.b04=%.4x\n",x.b04);
  x.b05=i1;
            if (x.b05==1) printf("**(05)** OK x.b05=%.8x\n",x.b05);
            else          printf("**(05)** NG x.b05=%.8x\n",x.b05);
  x.b06=i1; 
            if (x.b06==1) printf("**(06)** OK x.b06=%.8x\n",x.b06);
            else          printf("**(06)** NG x.b06=%.8x\n",x.b06);
  x.b01=i2; 
            if (x.b01==0) printf("**(07)** OK x.b01=%.1x\n",x.b01);
            else          printf("**(07)** NG x.b01=%.1x\n",x.b01);
  x.b02=i2; 
            if (x.b02==0) printf("**(08)** OK x.b02=%.1x\n",x.b02);
            else          printf("**(08)** NG x.b02=%.1x\n",x.b02);
  x.b03=i2;
            if (x.b03==0) printf("**(09)** OK x.b03=%.4x\n",x.b03);
            else          printf("**(09)** NG x.b03=%.4x\n",x.b03);
  x.b04=i2; 
            if (x.b04==0) printf("**(10)** OK x.b04=%.4x\n",x.b04);
            else          printf("**(10)** NG x.b04=%.4x\n",x.b04);
  x.b05=i2;
            if (x.b05==0) printf("**(11)** OK x.b05=%.8x\n",x.b05);
            else          printf("**(11)** NG x.b05=%.8x\n",x.b05);
  x.b06=i2; 
            if (x.b06==0) printf("**(12)** OK x.b06=%.8x\n",x.b06);
            else          printf("**(12)** NG x.b06=%.8x\n",x.b06);
  x.b01=i4;
            if (x.b01==-1) printf("**(13)** OK\n");
            else          printf("**(13)** NG x.b01=%.1x\n",x.b01);
  x.b02=i4; 
            if (x.b02==1) printf("**(14)** OK x.b02=%.1x\n",x.b02);
            else          printf("**(14)** NG x.b02=%.1x\n",x.b02);
  x.b03=i4; 
            if (x.b03==1) printf("**(15)** OK x.b03=%.4x\n",x.b03);
            else          printf("**(15)** NG x.b03=%.4x\n",x.b03);
  x.b04=i4; 
            if (x.b04==1) printf("**(16)** OK x.b04=%.4x\n",x.b04);
            else          printf("**(16)** NG x.b04=%.4x\n",x.b04);
  x.b05=i4; 
            if (x.b05==1) printf("**(17)** OK x.b05=%.8x\n",x.b05);
            else          printf("**(17)** NG x.b05=%.8x\n",x.b05);
  x.b06=i4;
            if (x.b06==1) printf("**(18)** OK x.b06=%.8x\n",x.b06);
            else          printf("**(18)** NG x.b06=%.8x\n",x.b06);
 
  y.b01=i1; 
            if (y.b01==1) printf("**(19)** OK y.b01=%.8x\n",y.b01);
            else          printf("**(19)** NG y.b01=%.8x\n",y.b01);
  y.b02=i1; 
            if (y.b02==1) printf("**(20)** OK y.b02=%.8x\n",y.b02);
            else          printf("**(20)** NG y.b02=%.8x\n",y.b02);
  y.b03=i2; 
            if (y.b03==0) printf("**(21)** OK y.b03=%.16x\n",y.b03);
            else          printf("**(21)** NG y.b03=%.16x\n",y.b03);
  y.b04=i2; 
            if (y.b04==0) printf("**(22)** OK y.b04=%.16x\n",y.b04);
            else          printf("**(22)** NG y.b04=%.16x\n",y.b04);
  y.b05=i4; 
            if (y.b05==1) printf("**(23)** OK y.b05=%.32x\n",y.b05);
            else          printf("**(23)** NG y.b05=%.32x\n",y.b05);
  y.b06=i4;
            if (y.b06==1) printf("**(24)** OK y.b06=%.32x\n",y.b06);
            else          printf("**(24)** NG y.b06=%.32x\n",y.b06);
 
}
