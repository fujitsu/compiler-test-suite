#include<stdio.h>
#include<math.h>
#define MAX 1000
int main()
{
  int i;
  double baz[MAX], bar[MAX], foo[MAX];
  for (i=MAX-1;i>=0;i--){
    bar[i] = (double)i;
    foo[i] = (double)i;
  }
  for(i=MAX-1;i>=0;i--) {
    baz[i] = foo[i] + bar[i];
  }
  printf("%lf\n",baz[4]);

  for(i=MAX-1;i>=0;i--) {
    baz[i] = foo[i] - bar[i];
  }
  printf("%lf\n",baz[4]);

  for(i=MAX-1;i>=0;i--) {
    baz[i] = foo[i] * bar[i];
  }

  printf("%lf\n",baz[4]);
}
