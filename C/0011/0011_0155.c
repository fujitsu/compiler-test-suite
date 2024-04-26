#include  <stdio.h>

enum et { en1,en2=10,en3 } en ;

enum et b = en3 ;
int main()
{

  printf("********** TEST START **********\n");

  if (b == en3)
      printf(" ***** O   K *****\n");
  else
      printf(" ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");

}
