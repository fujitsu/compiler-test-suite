
#include <stdio.h>

void func(p,a)
  int **p, *a ;
{
  *p = &a[9] ;
}
int main() {
  int *p, a[10]={1,2,3,4,5,6,7,8,9,10},i ;
  func(&p,a) ;
  for(i=0;i<10;i++){
    *p+=a[i] ;
  }

  printf(" result is %d. ",*p) ;
  if(*p == 110){	
    printf(" OK\n") ;
  } else if(*p == 65){	
    printf(" OK\n") ;
  } else {
    printf("NG\n",*p) ;
  }
}
