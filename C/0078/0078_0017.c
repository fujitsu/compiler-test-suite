#include <stdio.h>
#if !defined(__hal)
#define  __int32  int
#endif
int main(){
 static char  i1 = -1;

  if ((unsigned __int32)i1 == 4294967295u)
       printf("** dpmk2032(07) ** OK\n");
  else
       printf("** dpmk2032(07) ** NG\n");
}

