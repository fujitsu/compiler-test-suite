

#include <stdio.h>

int a[100];

int main(){
  int i, *p;
  p = &i;

  a[0]=0; a[1]=0; a[99]=0;

  i=0;
  *p=2;
 loop_top:
  a[i]=i;
  i++;
  if (i < 99) goto loop_top;

  for(i=0; i<100 ; i++) printf("%d ",a[i]); printf("\n"); 
}
