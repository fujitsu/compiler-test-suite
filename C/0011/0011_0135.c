#include  <stdio.h>

enum et { en1,en2=10,en3 } en ;
int main()
{
  static enum et b = en3 ;


  printf("********** TEST START **********\n");

  if (b == en3)
      printf(" ***** O   K *****\n");
  else
      printf(" ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");

}
