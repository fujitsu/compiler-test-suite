#include <stdio.h>
#include <string.h>

unsigned char result[64] = {
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
};

struct TAG9 {
  signed long  sl;
  signed char  sc;
} st9;

 struct TAG9 func9() {
   struct TAG9 res;
#if defined(__x86_64__)  
   memcpy(&res,&result,8); 
#else   
   memcpy(&res,&result,sizeof(struct TAG9));
#endif   
   return res;
 } 
int main()
{
  st9 = func9();
#if defined(__x86_64__)  
  if( memcmp(&st9,&result,8) != 0 )
#else
  if( memcmp(&st9,&result,8) != 0 )
#endif
    puts("NGsize");
}
