#include <stdlib.h>
#include <math.h>
#include  <stdio.h>


#define MAX_SIMM8     127
#define MAX_IMM8      255
#define MAX_SIMM16    32767
#define MAX_IMM16     65535
#define MAX_SIMM32    2147483647
#define MAX_IMM32     4294967295
int main(){
  struct s {
             signed int       b05:32;
           unsigned int       b06:32;
             signed short int b03:16;
           unsigned short int b04:16;
             signed char      b01:8;
           unsigned char      b02:8;
  };
  struct s  x ;
  struct s *y ;
  struct s z[10];
  struct v {
    struct s  u[10] ;
  } ;
  struct v  w;
  struct v *p;
  int      i;
  x.b06=MAX_IMM32;
  x.b05=MAX_SIMM32;
  x.b04=MAX_IMM16;
  x.b03=MAX_SIMM16;
  x.b02=MAX_IMM8;
  x.b01=MAX_SIMM8;
             if (x.b01==MAX_SIMM8) printf("**(01)** OK x.b01=%x\n",x.b01);
             else                  printf("**(01)** NG x.b01=%x\n",x.b01);
             if (x.b02==MAX_IMM8)  printf("**(02)** OK x.b02=%x\n",x.b02);
             else                  printf("**(02)** NG x.b02=%x\n",x.b02);
             if (x.b03==MAX_SIMM16) printf("**(03)** OK x.b03=%x\n",x.b03);
             else                   printf("**(03)** NG x.b03=%x\n",x.b03);
             if (x.b04==MAX_IMM16)  printf("**(04)** OK x.b04=%x\n",x.b04);
             else                   printf("**(04)** NG x.b04=%x\n",x.b04);
             if (x.b05==MAX_SIMM32) printf("**(05)** OK x.b05=%x\n",x.b05);
             else                   printf("**(05)** NG x.b05=%x\n",x.b05);
             if (x.b06==MAX_IMM32) printf("**(06)** OK x.b06=%x\n",x.b06);
             else                  printf("**(06)** NG x.b06=%x\n",x.b06);
  y=&x;
             if (y->b01==MAX_SIMM8) printf("**(07)** OK y->b01=%x\n",y->b01);
             else                   printf("**(07)** NG y->b01=%x\n",y->b01);
             if (y->b02==MAX_IMM8) printf("**(08)** OK y->b02=%x\n",y->b02);
             else                    printf("**(08)** NG y->b02=%x\n",y->b02);
             if (y->b03==MAX_SIMM16) printf("**(09)** OK y->b03=%x\n",y->b03);
             else                    printf("**(09)** NG y->b03=%x\n",y->b03);
             if (y->b04==MAX_IMM16) printf("**(10)** OK y->b04=%x\n",y->b04);
             else                   printf("**(10)** NG y->b04=%x\n",y->b04);
             if (y->b05==MAX_SIMM32) printf("**(11)** OK y->b05=%x\n",y->b05);
             else                    printf("**(11)** NG y->b05=%x\n",y->b05);
             if (y->b06==MAX_IMM32) printf("**(12)** OK y->b06=%x\n",y->b06);
             else                   printf("**(12)** NG y->b06=%x\n",y->b06);
  for (i=0;i<10;i++) { 
  z[i].b06=MAX_IMM32;
  z[i].b05=MAX_SIMM32;
  z[i].b04=MAX_IMM16;
  z[i].b03=MAX_SIMM16;
  z[i].b02=MAX_IMM8;
  z[i].b01=MAX_SIMM8;}
             if (z[i-1].b01==MAX_SIMM8) printf("**(13)** OK z[i-1].b01=%x\n",z[i-1].b01);
             else                       printf("**(13)** NG z[i-1].b01=%x\n",z[i-1].b01);
             if (z[i-1].b02==MAX_IMM8) printf("**(14)** OK z[i-1].b02=%x\n",z[i-1].b02);
             else                      printf("**(14)** NG z[i-1].b02=%x\n",z[i-1].b02);
             if (z[i-1].b03==MAX_SIMM16) printf("**(15)** OK z[i-1].b03=%x\n",z[i-1].b03);
             else                       printf("**(15)** NG z[i-1].b03=%x\n",z[i-1].b03);
             if (z[i-1].b04==MAX_IMM16) printf("**(16)** OK z[i-1].b04=%x\n",z[i-1].b04);
             else                       printf("**(16)** NG z[i-1].b04=%x\n",z[i-1].b04);
             if (z[i-1].b05==MAX_SIMM32) printf("**(17)** OK z[i-1].b05=%x\n",z[i-1].b05);
             else                       printf("**(17)** NG z[i-1].b05=%x\n",z[i-1].b05);
             if (z[i-1].b06==MAX_IMM32) printf("**(18)** OK z[i-1].b06=%x\n",z[i-1].b06);
             else                       printf("**(18)** NG z[i-1].b06=%x\n",z[i-1].b06);
             p=&w;
  for (i=0;i<10;i++) { 
  p->u[i].b06=MAX_IMM32;
  p->u[i].b05=MAX_SIMM32;
  p->u[i].b04=MAX_IMM16;
  p->u[i].b03=MAX_SIMM16;
  p->u[i].b02=MAX_IMM8;
  p->u[i].b01=MAX_SIMM8;}
             if (p->u[i-1].b01==MAX_SIMM8) printf("**(19)** OK p->u[i-1].b01=%x\n",p->u[i-1].b01);
             else                          printf("**(19)** NG p->u[i-1].b01=%x\n",p->u[i-1].b01);
             if (p->u[i-1].b02==MAX_IMM8) printf("**(20)** OK p->u[i-1].b02=%x\n",p->u[i-1].b02);
             else                           printf("**(20)** NG p->u[i-1].b02=%x\n",p->u[i-1].b02);
             if (p->u[i-1].b03==MAX_SIMM16) printf("**(21)** OK p->u[i-1].b03=%x\n",p->u[i-1].b03);
             else                          printf("**(21)** NG p->u[i-1].b03=%x\n",p->u[i-1].b03);
             if (p->u[i-1].b04==MAX_IMM16) printf("**(22)** OK p->u[i-1].b04=%x\n",p->u[i-1].b04);
             else                          printf("**(22)** NG p->u[i-1].b04=%x\n",p->u[i-1].b04);
             if (p->u[i-1].b05==MAX_SIMM32) printf("**(23)** OK p->u[i-1].b05=%x\n",p->u[i-1].b05);
             else                          printf("**(23)** NG p->u[i-1].b05=%x\n",p->u[i-1].b05);
             if (p->u[i-1].b06==MAX_IMM32) printf("**(24)** OK p->u[i-1].b06=%x\n",p->u[i-1].b06);
             else                          printf("**(24)** NG p->u[i-1].b06=%x\n",p->u[i-1].b06);
  for (i=0;i<10;i++) { 
  p->u[i].b06=
  p->u[i].b05=
  p->u[i].b04=
  p->u[i].b03=
  p->u[i].b02=
  p->u[i].b01=0;}
             if (p->u[i-1].b01==0) printf("**(25)** OK p->u[i-1].b01=%x\n",p->u[i-1].b01);
             else                  printf("**(25)** NG p->u[i-1].b01=%x\n",p->u[i-1].b01);
             if (p->u[i-1].b02==0) printf("**(26)** OK p->u[i-1].b02=%x\n",p->u[i-1].b02);
             else                  printf("**(26)** NG p->u[i-1].b02=%x\n",p->u[i-1].b02);
             if (p->u[i-1].b03==0) printf("**(27)** OK p->u[i-1].b03=%x\n",p->u[i-1].b03);
             else                  printf("**(27)** NG p->u[i-1].b03=%x\n",p->u[i-1].b03);
             if (p->u[i-1].b04==0) printf("**(28)** OK p->u[i-1].b04=%x\n",p->u[i-1].b04);
             else                  printf("**(28)** NG p->u[i-1].b04=%x\n",p->u[i-1].b04);
             if (p->u[i-1].b05==0) printf("**(29)** OK p->u[i-1].b05=%x\n",p->u[i-1].b05);
             else                  printf("**(29)** NG p->u[i-1].b05=%x\n",p->u[i-1].b05);
             if (p->u[i-1].b06==0) printf("**(30)** OK p->u[i-1].b06=%x\n",p->u[i-1].b06);
             else                  printf("**(30)** NG p->u[i-1].b06=%x\n",p->u[i-1].b06);
  if (i=
        (p->u[i-1].b06==
         p->u[i-1].b05==
         p->u[i-1].b04==
         p->u[i-1].b03==
         p->u[i-1].b02==
         p->u[i-1].b01)) 
                                   printf("**(31)** OK i=%d\n",i);
                   else            printf("**(31)** NG i=%d\n",i);
exit (0);
}
