#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

enum et { en1,en2=10,en3 } en ;
int main()
{
  static enum et b = en3 ;


  printf("********** SCPII06 TEST START **********\n");

  if (b == en3)
      printf(" ***** SCPII06 ***** O   K *****\n");
  else
      printf(" ***** SCPII06 ***** N   G *****\n");

  printf("********** SCPII06 TEST  END  **********\n");

exit (0);
}
