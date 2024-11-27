#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

enum et { en1,en2=10,en3 } en ;

enum et b = en3 ;
int main()
{

  printf("********** SCPII30 TEST START **********\n");

  if (b == en3)
      printf(" ***** SCPII30 ***** O   K *****\n");
  else
      printf(" ***** SCPII30 ***** N   G *****\n");

  printf("********** SCPII30 TEST  END  **********\n");

exit (0);
}
