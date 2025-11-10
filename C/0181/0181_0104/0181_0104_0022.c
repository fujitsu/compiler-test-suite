#include <stdio.h>
int lto_sub_24(){
  struct s {
             signed char      b01:8;
           unsigned char      b02:8;
             signed short     b03:16;
           unsigned short     b04:16;
             signed int       b05:32;
  } y;
                       y.b02=0xff;
                       y.b03=0xffff;
  if (y.b02==0xff) 
                       printf("** OK y.b01\n");
               else    printf("** NG y.b01\n");
  if (y.b03== -1 ) 
                       printf("** OK y.b01\n");
               else    printf("** NG y.b01\n");
}
