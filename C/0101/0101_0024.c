#include <stdio.h>

int main()
{
#if __sparc
   extern long long   __jwe_xsparc_id;
   if(  __jwe_xsparc_id != 1 ) {
     puts("NG");
   }
#else
   ;
#endif
 
   puts("PASS");
}
