#include<stdio.h>
#include<math.h>
#define MAX 1000
int main()
{
  int i;
  double baz[MAX], bar[MAX], foo[MAX];
  for (i = 0; i != MAX; i++){
    bar[i] = (double)i;
    foo[i] = (double)i;
  }
  for(i=0;i!=MAX;i++) {
    baz[i] = foo[i] + bar[i];
  }
  printf("%lf\n",baz[4]);

  for(i=0;i!=MAX;i++) {
    baz[i] = foo[i] - bar[i];
  }
  printf("%lf\n",baz[4]);

  for(i=0;i!=MAX;i++) {
    baz[i] = foo[i] * bar[i];
  }

  printf("%lf\n",baz[4]);
}
