#include <stdio.h>
int sub(int *s)
{
  *s=1;
  *(s+1)=2;
}
int main(){
  char * p ;
  int  * q ;
  struct {
    int    n, m ;
  } s ;  

  sub((int *)&s);
  printf("%d\n",s.m);
  printf("%d\n",s.n);

  sub((int *)&s);
  p = (char *)&s.n ;
  q = (int *)p;
  *q=6;
  *(p+1)=1;
  *(q+1)=4;
  *(p+2)=1;
  printf("%d\n",s.m);
  printf("%d\n",s.n);
}
