#include <stdio.h>

#define N 400
#define SM (double)0
#define BG (double)N
#define LE (double)1
#define ANS (double)(-20001.0)
int main()
{
  double red[N], uct[N], ion[N];
  double sum=SM, val=SM;
  int i, j, k;

  for (i=0; i<N; i++) {
    red[i] = (double)(i%2);
    uct[i] = (double)(i%3);
    ion[i] = (double)(i%4);
  }

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      sum = val;
      val = sum;
      for (k=0; k<N; k++) {
	sum = sum + uct[k];
	val = val + (ion[j] - red[j]);
      }
    }
    if (sum > val) {
      sum = SM;
      val = -LE*BG;
    } else {
      sum = -LE*BG;
      val = SM;
    }
  }

  for (i=0; i<N*(N/2)*(N/4); i++) {
    sum = sum - (uct[i%N]*ion[i%N] - red[i%N]*uct[i%N]);
  }

  if (val == SM)
    sum = sum / BG;
  else
    if (sum > val)
      sum = val;
    else
      sum = SM;

  if (sum == ANS)
    printf("** OK **\n");
  else
    printf("** NG **\n");
}
