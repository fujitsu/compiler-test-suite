#include <stdio.h>


#define N 400
#define TEN 10

typedef struct data {
  double num;
  int    inum;
} DAT;

#define SET_zero(x) x=(double)0.0

double x[TEN][TEN] = {
  {0.1, 0.1},
  {0.2, 0.2},
  {0.3, 0.3},
  {0.4, 0.4},
  {0.5, 0.5},
  {0.6, 0.6},
  {0.7, 0.7},
  {0.8, 0.8},
  {0.9, 0.9},
  {1.0, 1.0},
};

double y[TEN][TEN] = {
  {0.2, 0.2},
  {0.1, 0.1},
  {0.3, 0.3},
  {0.5, 0.5},
  {0.8, 0.8},
  {1.0, 1.0},
  {0.4, 0.4},
  {0.7, 0.7},
  {0.6, 0.6},
  {0.9, 0.9},
};
int main()
{
  double p1, p2, p3, p4, psum;
  double a[TEN], b[TEN];
  DAT    chain[TEN][TEN];
  int    i,j;
  int    sum = 0;

  for (i=0; i<TEN; i++) {
    for (j=0; j<TEN; j++) {
      chain[i][j].num = x[i%10][j%10] + y[i%10][j%10];
      chain[i][j].inum = (int)(chain[i][j].num*(double)10.0);
    }
  }

  for (i=0; i<TEN; i++) {
    for (j=0; j<TEN; j++) {
      if (chain[i][j].num > (double)0.8) {
	sum = sum + 1;
      }
      else {
	chain[i][j].inum = 0;
      }
    }
  }

  SET_zero(p1);
  SET_zero(p2);
  SET_zero(p3);
  SET_zero(p4);

  if (sum <= 0) {
    for (i=0; i<N; i++) {
      for (j=0; j<N; j++) {
	p1 = p1 + x[i%10][j%10];
	p2 = p2 + x[j%10][i%10];
	p3 = p3 - x[i%10][j%10];
	p4 = p4 - x[j%10][i%10];
      }
    }
  }
  else {
    for (i=0; i<N; i++) {
      for (j=0; j<N; j++) {
	p1 = p1 + x[i%10][j%10];
	p2 = p2 + x[j%10][i%10];
      }
    }
  }

  psum = p1 + p2 + p3 + p4;

  for (i=0; i<TEN; i++) {
    for (j=0; j<TEN; j++) {
      sum = sum + chain[i][j].inum;
    }
    a[i] = chain[i][i].num;
  }

  for (i=0; i<TEN; i++) {
    b[i] = (double)0.0;
  }

  for (i=0; i<TEN-3; i++) {
    b[i] = a[i]*(p1*a[i+1] + p2*a[i+2]);
  }

  for (i=0; i<TEN; i++) {
    for (j=0; j<TEN; j++) {
      switch (j) {
      case 0: case 1: case 2:
	psum += chain[i][i].num;
	break;
      case 3: case 4: case 5:
	psum -= chain[i][i].num;
	break;
      default:
	psum += b[j];
      }
    }
  }

  if ((int)psum > sum) {
    printf("sum = %f\n",(float)psum);
  }
  else {
    printf("sum = %d\n",sum);
  }
}

