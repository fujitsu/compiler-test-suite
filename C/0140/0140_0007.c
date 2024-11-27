#include <stdio.h>


#define N 21
#define ANS1 -40768
#define ANS2 434
int main()
{
  int i, s=0, m=0;
  static int a[N];

 
  for (i=0; i<N; i++) {
    s = i % (N/3);
    m = m - i;
    a[i] = a[i] - (s-i);
  }

 
  for (i=0; i<N; i++) {
    s = a[i] + (a[i%4]*a[i%6]);
    m = m + a[i%5];
    a[i] = a[i] - m;
  }

  a[0] = a[0] - a[i-1] - s;
  a[1] = a[1] + a[i-2] + m;

  if (a[0] == ANS1 && a[1] == ANS2)
    printf("OK\n");
  else
    printf("NG : %d != %d or %d != %d\n", a[0],ANS1,a[1],ANS2);
}

