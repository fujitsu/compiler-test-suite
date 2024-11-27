#include<stdio.h>
#include<math.h>
#define MAX 1000
int main()
{
  int i;
  long int baz[MAX], bar[MAX], foo[MAX];
  for (i = MAX-1; i >= 0; i--){
    bar[i] = i;
    foo[i] = i;
  }
  for(i=MAX-1;i>=0;i--) {
    baz[i] = foo[i] + bar[i];
  }
  printf("%ld\n",baz[4]);
}
