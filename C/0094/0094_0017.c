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
             if (x.b01==MAX_SIMM8) printf("**\n",x.b01);
             else                  printf("**\n",x.b01);
             if (x.b02==MAX_IMM8)  printf("**\n",x.b02);
             else                  printf("**\n",x.b02);
             if (x.b03==MAX_SIMM16) printf("**\n",x.b03);
             else                   printf("**\n",x.b03);
             if (x.b04==MAX_IMM16)  printf("**\n",x.b04);
             else                   printf("**\n",x.b04);
             if (x.b05==MAX_SIMM32) printf("**\n",x.b05);
             else                   printf("**\n",x.b05);
             if (x.b06==MAX_IMM32) printf("**\n",x.b06);
             else                  printf("**\n",x.b06);
  y=&x;
             if (y->b01==MAX_SIMM8) printf("**\n",y->b01);
             else                   printf("**\n",y->b01);
             if (y->b02==MAX_IMM8) printf("**\n",y->b02);
             else                    printf("**\n",y->b02);
             if (y->b03==MAX_SIMM16) printf("**\n",y->b03);
             else                    printf("**\n",y->b03);
             if (y->b04==MAX_IMM16) printf("**\n",y->b04);
             else                   printf("**\n",y->b04);
             if (y->b05==MAX_SIMM32) printf("**\n",y->b05);
             else                    printf("**\n",y->b05);
             if (y->b06==MAX_IMM32) printf("**\n",y->b06);
             else                   printf("**\n",y->b06);
  for (i=0;i<10;i++) { 
  z[i].b06=MAX_IMM32;
  z[i].b05=MAX_SIMM32;
  z[i].b04=MAX_IMM16;
  z[i].b03=MAX_SIMM16;
  z[i].b02=MAX_IMM8;
  z[i].b01=MAX_SIMM8;}
             if (z[i-1].b01==MAX_SIMM8) printf("**\n",z[i-1].b01);
             else                       printf("**\n",z[i-1].b01);
             if (z[i-1].b02==MAX_IMM8) printf("**\n",z[i-1].b02);
             else                      printf("**\n",z[i-1].b02);
             if (z[i-1].b03==MAX_SIMM16) printf("**\n",z[i-1].b03);
             else                       printf("**\n",z[i-1].b03);
             if (z[i-1].b04==MAX_IMM16) printf("**\n",z[i-1].b04);
             else                       printf("**\n",z[i-1].b04);
             if (z[i-1].b05==MAX_SIMM32) printf("**\n",z[i-1].b05);
             else                       printf("**\n",z[i-1].b05);
             if (z[i-1].b06==MAX_IMM32) printf("**\n",z[i-1].b06);
             else                       printf("**\n",z[i-1].b06);
             p=&w;
  for (i=0;i<10;i++) { 
  p->u[i].b06=MAX_IMM32;
  p->u[i].b05=MAX_SIMM32;
  p->u[i].b04=MAX_IMM16;
  p->u[i].b03=MAX_SIMM16;
  p->u[i].b02=MAX_IMM8;
  p->u[i].b01=MAX_SIMM8;}
             if (p->u[i-1].b01==MAX_SIMM8) printf("**\n",p->u[i-1].b01);
             else                          printf("**\n",p->u[i-1].b01);
             if (p->u[i-1].b02==MAX_IMM8) printf("**\n",p->u[i-1].b02);
             else                           printf("**\n",p->u[i-1].b02);
             if (p->u[i-1].b03==MAX_SIMM16) printf("**\n",p->u[i-1].b03);
             else                          printf("**\n",p->u[i-1].b03);
             if (p->u[i-1].b04==MAX_IMM16) printf("**\n",p->u[i-1].b04);
             else                          printf("**\n",p->u[i-1].b04);
             if (p->u[i-1].b05==MAX_SIMM32) printf("**\n",p->u[i-1].b05);
             else                          printf("**\n",p->u[i-1].b05);
             if (p->u[i-1].b06==MAX_IMM32) printf("**\n",p->u[i-1].b06);
             else                          printf("**\n",p->u[i-1].b06);
  for (i=0;i<10;i++) { 
  p->u[i].b06=
  p->u[i].b05=
  p->u[i].b04=
  p->u[i].b03=
  p->u[i].b02=
  p->u[i].b01=0;}
             if (p->u[i-1].b01==0) printf("**\n",p->u[i-1].b01);
             else                  printf("**\n",p->u[i-1].b01);
             if (p->u[i-1].b02==0) printf("**\n",p->u[i-1].b02);
             else                  printf("**\n",p->u[i-1].b02);
             if (p->u[i-1].b03==0) printf("**\n",p->u[i-1].b03);
             else                  printf("**\n",p->u[i-1].b03);
             if (p->u[i-1].b04==0) printf("**\n",p->u[i-1].b04);
             else                  printf("**\n",p->u[i-1].b04);
             if (p->u[i-1].b05==0) printf("**\n",p->u[i-1].b05);
             else                  printf("**\n",p->u[i-1].b05);
             if (p->u[i-1].b06==0) printf("**\n",p->u[i-1].b06);
             else                  printf("**\n",p->u[i-1].b06);
  if (i=
        (p->u[i-1].b06==
         p->u[i-1].b05==
         p->u[i-1].b04==
         p->u[i-1].b03==
         p->u[i-1].b02==
         p->u[i-1].b01)) 
                                   printf("**\n",i);
                   else            printf("**\n",i);
}
