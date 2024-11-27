#include <stdio.h>
int sub(int *s)
{
  *s=1;
  *(s+1)=2;
}
int main(){
  struct {
    int    n, m ;
  } s, *p;  

  sub((int *)&s);
  printf("%d\n",s.m);
  printf("%d\n",s.n);

  sub((int *)&s);
  p = &s;
  p->n=2;
  p->m=3;
  printf("%d\n",s.m);
  printf("%d\n",s.n);
}
