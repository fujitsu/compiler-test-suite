#include  <stdio.h>

int main()
{
    unsigned int a = 1 ;
    int b ;

    printf("***** START ***** \n") ;
    b = ((a&1)-2)>0 ;
    if (b==1)
      printf(" O K \n") ;
    else
      printf(" N G \n") ;
    printf("*****  END    ***** \n") ;
}
