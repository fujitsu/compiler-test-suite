#include <stdio.h>

#include <stdlib.h>

#define N 50
#define ANS 777

typedef struct {
  int k;
} TTT;
int main()
{
  int i;
  volatile int a;
  int *p;
  TTT *q = (TTT *)malloc(sizeof(TTT));

  q->k = 727;
  p = (int *)(&(q->k));
  a = *p;
  p = (int *)&a;

  for (i=0; i<N; i++) {
    *p = a + 1;
  }

  if (a == 777) 
    printf("a = %d --- ok\n", a);
  else
    printf("a = %d --- ng (answer = %d)\n", a, ANS);

  free(q);
}
