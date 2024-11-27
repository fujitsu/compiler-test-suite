
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main()
{
  char str1[12],*p,*q ;

  printf("**********  TEST START **********\n"); 

  p=strcpy(str1,"123456789ab") ;
  if(strcmp(p,str1)){	
    printf("NG-1\n");
    printf("p       : %s\n",p) ;
    printf("str1    : %s\n",str1) ;
    printf("correct : 123456789ab  for both.\n") ;
    return 0;
  }

  q=memcpy(str1+4,"abcd",4) ;
  if(strcmp(p,"1234abcd9ab")){
    printf("NG-2\n");
    printf("p       : %s\n",p) ;
     printf("correct : 1234abcd9ab\n") ;
    return 0;
  }

  if(p!=str1){
    printf("NG-2\n");
    return 0;
  }
  if(q != p+4){
    printf("NG-2\n");
    return 0;
  }

  printf("str1 : %s\n",str1) ;
  printf("*p   : %s\n",p) ;
  printf("*q   : ____%s\n",q) ;
  printf(" OK\n");
  printf("**********  TEST  END  **********\n");
}
