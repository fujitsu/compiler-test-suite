

#include <stdio.h>
#include <stdlib.h>

typedef struct node {
  struct node *brother;
  double *dl;
} NODE;

#define N 100
#define DD1 1
#define DD2 2
#define DD3 3
#define DD4 4

static double sw_node();
int main()
{
  NODE *p, *q;
  int  i;
  double back_dl, sum;

  p = (NODE *)malloc(N*sizeof(NODE));
  for (i = 0; i < N-1; i++) {
    p[i].brother = &p[i+1];
    p[i].dl = (double *)malloc(sizeof(double));
    *(p[i].dl) = (double)(i % 9);
  }
  p[N-1].brother = NULL;
  p[N-1].dl = (double *)malloc(sizeof(double));
  *(p[N-1].dl) = (double)(N-1);

  q = p;
  sum = (double)0.0;
  while (q != NULL) {
    back_dl = *(q->dl);
    *(q->dl) = sw_node(q);
    if (*(q->dl) > back_dl) {
      sum = sum + *(q->dl);
    }
    q = q->brother;
  }

#ifndef DS90
  printf("sum = %lf\n", sum);
#else
  printf("sum = %f\n", sum);
#endif
}

static double
sw_node(q)
  NODE *q;
{
  double value = *(q->dl);

  switch ((int)value % 5) {
  case DD1:
    value = value+(double)DD1;
    break;
  case DD2:
    value = value-(double)DD2;
    break;
  case DD3:
    value = value*(double)DD3;
    break;
  case DD4:
    value = value/(double)DD4;
    break;
  default:
    break;
  }

  return(value);
}
