#include <stdio.h>
int lto_sub_23(){
  struct s {
             signed char      b01:8;
           unsigned char      b02:8;
             signed int     b03:8;
           unsigned int     b04:8;
             signed int       b05:32;
  } y;
                       y.b02=0xff;
                       y.b03=0xffffffff;
  if (y.b02==0xff) 
                       printf("** OK y.b01\n");
               else    printf("** NG y.b01\n");
  if (y.b03== -1 ) 
                       printf("** OK y.b01\n");
               else    printf("** NG y.b01\n");
}
