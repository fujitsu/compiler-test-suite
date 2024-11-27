#include  <stdio.h>


#define MAX_SIMM8     127
#define MAX_IMM8      255
#define MAX_SIMM16    32767
#define MAX_IMM16     65535
#define MAX_SIMM32    2147483647
#define MAX_IMM32     4294967295
#define MAX_SIMM64    9223372036854775807
#define MAX_IMM64     18446744073709551615
int main(){
  struct s {
             signed int       b05:32;
           unsigned long long b08:64;
           unsigned int       b06:32;
             signed short int b03:16;
           unsigned short int b04:16;
             signed char      b01:8;
             signed long long b07:64;
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
  x.b07=MAX_SIMM64;
  x.b08=MAX_IMM64;
  x.b06=MAX_IMM32;
  x.b05=MAX_SIMM32;
  x.b04=MAX_IMM16;
  x.b03=MAX_SIMM16;
  x.b02=MAX_IMM8;
  x.b01=MAX_SIMM8;
             if (x.b01==MAX_SIMM8 
             &&  x.b02==MAX_IMM8
             &&  x.b03==MAX_SIMM16
             &&  x.b04==MAX_IMM16
             &&  x.b05==MAX_SIMM32
             &&  x.b06==MAX_IMM32) 
                                  printf("**(01) ok \n");
                        else      printf("**(01) ng \n");
  if (x.b07==MAX_SIMM64) 
                                  printf("**(02) ok \n");
                        else      printf("**(02) ng \n");
  if (x.b08==MAX_IMM64) 
                                  printf("**(03) ok \n");
                        else      printf("**(03) ng \n");
  y=&x;
             if (y->b01==MAX_SIMM8 
             &&  y->b02==MAX_IMM8
             &&  y->b03==MAX_SIMM16
             &&  y->b04==MAX_IMM16
             &&  y->b05==MAX_SIMM32
             &&  y->b06==MAX_IMM32) 
                                  printf("**(04) ok \n");
                        else      printf("**(04) ng \n");
  if (y->b07==MAX_SIMM64) 
                                  printf("**(05) ok \n");
                        else      printf("**(05) ng \n");
  if (y->b08==MAX_IMM64) 
                                  printf("**(06) ok \n");
                        else      printf("**(06) ng \n");
  for (i=0;i<10;i++) { 
  z[i].b06=MAX_IMM32;
  z[i].b05=MAX_SIMM32;
  z[i].b04=MAX_IMM16;
  z[i].b07=MAX_SIMM64;
  z[i].b08=MAX_IMM64;
  z[i].b03=MAX_SIMM16;
  z[i].b02=MAX_IMM8;
  z[i].b01=MAX_SIMM8;
  }
             if (z[i-1].b01==MAX_SIMM8 
             &&  z[i-1].b02==MAX_IMM8
             &&  z[i-1].b03==MAX_SIMM16
             &&  z[i-1].b04==MAX_IMM16
             &&  z[i-1].b05==MAX_SIMM32
             &&  z[i-1].b06==MAX_IMM32) 
                                  printf("**(07) ok \n");
                        else      printf("**(07) ng \n");
  if (z[i-1].b07==MAX_SIMM64) 
                                  printf("**(08) ok \n");
                        else      printf("**(08) ng \n");
  if (z[i-1].b08==MAX_IMM64) 
                                  printf("**(09) ok \n");
                        else      printf("**(09) ng \n");
             p=&w;
  for (i=0;i<10;i++) { 
  p->u[i].b06=MAX_IMM32;
  p->u[i].b05=MAX_SIMM32;
  p->u[i].b04=MAX_IMM16;
  p->u[i].b03=MAX_SIMM16;
  p->u[i].b02=MAX_IMM8;
  p->u[i].b08=MAX_IMM64;
  p->u[i].b01=MAX_SIMM8;
  p->u[i].b07=MAX_SIMM64;
}
             if (p->u[i-1].b01==MAX_SIMM8 
             &&  p->u[i-1].b02==MAX_IMM8
             &&  p->u[i-1].b03==MAX_SIMM16
             &&  p->u[i-1].b04==MAX_IMM16
             &&  p->u[i-1].b05==MAX_SIMM32
             &&  p->u[i-1].b06==MAX_IMM32) 
                                  printf("**(10) ok \n");
                        else      printf("**(10) ng \n");
  if (p->u[i-1].b07==MAX_SIMM64) 
                                  printf("**(11) ok \n");
                        else      printf("**(11) ng \n");
  if (p->u[i-1].b08==MAX_IMM64) 
                                  printf("**(12) ok \n");
                        else      printf("**(12) ng \n");
  for (i=0;i<10;i++) { 
  p->u[i].b06=
  p->u[i].b05=
  p->u[i].b07=
  p->u[i].b04=
  p->u[i].b03=
  p->u[i].b08=
  p->u[i].b02=
  p->u[i].b01=0;
}
             if (p->u[i-1].b01==0 
             &&  p->u[i-1].b02==0
             &&  p->u[i-1].b03==0
             &&  p->u[i-1].b04==0
             &&  p->u[i-1].b05==0
             &&  p->u[i-1].b06==0) 
                                  printf("**(13) ok \n");
                        else      printf("**(13) ng \n");
  if (p->u[i-1].b07==0) 
                                  printf("**(14) ok \n");
                        else      printf("**(14) ng \n");
  if (p->u[i-1].b08==0) 
                                  printf("**(15) ok \n");
                        else      printf("**(15) ng \n");
  if (i=
        (p->u[i-1].b06==
         p->u[i-1].b05==
         p->u[i-1].b04==
         p->u[i-1].b03==
         p->u[i-1].b08==
         p->u[i-1].b07==
         p->u[i-1].b02==
         p->u[i-1].b01)) 
                                   printf("**(16)** OK i=%d\n",i);
                   else            printf("**(16)** NG i=%d\n",i);
}
