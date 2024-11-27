#include <stdlib.h>
#include <math.h>

#include <stdio.h>
int main(){
  struct s {
             signed char      b01:8;
           unsigned char      b02:8;
             signed short int b03:16;
           unsigned short int b04:16;
             signed int       b05:32;
           unsigned int       b06:32;
  } y;
                       y.b01=0xff;
                       y.b02=0xff;
                       y.b03=0xffff;
                       y.b04=0xffff;
                       y.b05=0xffffffff;
                       y.b06=0xffffffff;
  if (y.b01== -1 ) 
                       printf("**dpmk2026-(01)** OK y.b01=%d\n",y.b01);
               else    printf("**dpmk2026-(01)** NG y.b01=%d\n",y.b01);
  if (y.b02==0xff) 
                       printf("**dpmk2026-(02)** OK y.b01=%d\n",y.b02);
               else    printf("**dpmk2026-(02)** NG y.b01=%d\n",y.b02);
  if (y.b03== -1 ) 
                       printf("**dpmk2026-(03)** OK y.b01=%d\n",y.b03);
               else    printf("**dpmk2026-(03)** NG y.b01=%d\n",y.b03);
  if (y.b04==0xffff) 
                       printf("**dpmk2026-(04)** OK y.b01=%d\n",y.b04);
               else    printf("**dpmk2026-(04)** NG y.b01=%d\n",y.b04);
  if (y.b05== -1 ) 
                       printf("**dpmk2026-(05)** OK y.b01=%d\n",y.b05);
               else    printf("**dpmk2026-(05)** NG y.b01=%d\n",y.b05);
  if (y.b06== -1 ) 
                       printf("**dpmk2026-(06)** OK y.b01=%d\n",y.b06);
               else    printf("**dpmk2026-(06)** NG y.b01=%d\n",y.b06);
exit (0);
}
