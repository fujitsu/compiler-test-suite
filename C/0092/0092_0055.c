

#include <stdio.h>
int main(){
  struct s {
             signed char      b01:8;
           unsigned char      b02:8;
             signed short     b03:16;
           unsigned short     b04:16;
#if INT64
             signed int       b05:64;
           unsigned int       b06:64;
#else
             signed int       b05:32;
           unsigned int       b06:32;
#endif
  } y;
 
                       y.b01=0xff;
                       y.b02=0xff;
                       y.b03=0xffff;
                       y.b04=0xffff;
#if INT64
                       y.b05=0xffffffffffffffff;
                       y.b06=0xffffffffffffffff;
#else
                       y.b05=0xffffffff;
                       y.b06=0xffffffff;
#endif

  if (y.b01== -1 ) 
                       printf("**(01)** OK y.b01=%d\n",y.b01);
               else    printf("**(01)** NG y.b01=%d\n",y.b01);
  if (y.b02==0xff) 
                       printf("**(02)** OK y.b01=%d\n",y.b02);
               else    printf("**(02)** NG y.b01=%d\n",y.b02);
  if (y.b03== -1 ) 
                       printf("**(03)** OK y.b01=%d\n",y.b03);
               else    printf("**(03)** NG y.b01=%d\n",y.b03);
  if (y.b04==0xffff) 
                       printf("**(04)** OK y.b01=%d\n",y.b04);
               else    printf("**(04)** NG y.b01=%d\n",y.b04);
  if (y.b05== -1 ) 
                       printf("**(05)** OK y.b01=%d\n",y.b05);
               else    printf("**(05)** NG y.b01=%d\n",y.b05);
  if (y.b06== -1 ) 
                       printf("**(06)** OK y.b01=%d\n",y.b06);
               else    printf("**(06)** NG y.b01=%d\n",y.b06);
}
