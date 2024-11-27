#include <stdio.h>
int sub(int *p);
int main(){
  int  a,m,k=0;
  sub(&a) ;
  for (m=a?10:100;a<m;a++) k=k+1;
  if (k == 9)
    printf("**** hr018 ok **** \n");
  else {
    printf("**** hr018 ng **** \n");
    printf("%d\n",k);
  }
}
int sub(p)
int *p;
{
*p=1;
}
