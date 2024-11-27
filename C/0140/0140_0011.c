#include <stdio.h>


#define N    30
#define M     5
#define ANS 111

static void move_array();
int main()
{
  int i, j;
  int a[N], b[N];
  int sum = 0;

  for (i=0; i<N; i++)
    a[i] = b[i] = 0;

  for (i=0; i<M; i++) {
    for (j=0; j<M; j++) {
      b[i*j] = i+j;
    }
  }


  for (i=0; i<N; i++) {
    a[i] = b[i];
  }

  for (i=0; i<N; i++) {
    sum = sum + a[i];
  }

  for (i=0; i<M; i++) {
    for (j=0; j<M; j++) {
      b[i+j] = i*j;
    }
  }

  move_array(a,b);

  for (i=0; i<N; i++) {
    sum = sum + a[i];
  }

  if (sum == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}


static void move_array(a,b)
     int a[N],b[N];
{
  int i;


  for (i=0; i<N; i++) {
    a[i] = b[i];
  }
}
