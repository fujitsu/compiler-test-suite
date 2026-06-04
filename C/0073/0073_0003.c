#include <float.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define N 100
#define H 50
#define S 10
#define DZ (double)0.0
#define ANS 62

static bool dbl_is_equal(double a, double b);
int main()
{
  double var1, var2, var3;
  double array1[N], array2[N], array3[N];
  double mat1[N][N], mat2[N][N], mat3[N][N];
  ldiv_t ldiv_ret;
  int    i, j;
  int comp();
  char *ch1 = "1.000e-1";
  char *ch2 = "2.000e-1";
  char *ch3 = "4.000e-1";
  double asum1, asum2, asum3;
  double msum1, msum2, msum3;
  double atotal1, atotal2, mtotal1, mtotal2;
  double *hai;
  double total;

  var1 = atof(ch1);
  var2 = atof(ch2);
  var3 = atof(ch3);

  for (i=0; i<N; i++) {
    ldiv_ret = ldiv((long int)(i%H),(long int)S);
    array1[i] = (double)(ldiv_ret.quot)+var1;
    array2[i] = (double)(ldiv_ret.rem)+var2;
    array3[i] = var3*(array1[i]/(double)N)*(array2[i]/(double)N);
  }

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      mat1[i][j] = ldexp(array1[j],-(int)sizeof(j))+var1;
      mat2[i][j] = fmod(array2[j],array1[i])+var2;
      mat3[i][j] = var3*(mat1[i][j]+mat2[i][j]);
    }
  }

  asum1 = asum2 = asum3 = DZ;
  msum1 = msum2 = msum3 = DZ;
  for (i=0; i<N; i++) {
    asum1 = asum1 + array1[i];
    asum2 = asum2 + array2[i];
    asum3 = asum3 + array3[i];
    for (j=0; j<N; j++) {
      msum1 = msum1 + mat1[i][j];
      msum2 = msum2 + mat2[i][j];
      msum3 = msum3 + mat3[i][j];
    }
  }
  atotal1 = asum1 + asum2 + asum3;
  mtotal1 = msum1 + msum2 + msum3;
  qsort((void *)array3, N, sizeof(double), comp);
  qsort((void *)mat3, N*N, sizeof(double), comp); 
  asum1 = asum2 = asum3 = DZ;
  msum1 = msum2 = msum3 = DZ;
  for (i=0; i<N; i++) {
    asum1 = asum1 + array1[i];
    asum2 = asum2 + array2[i];
    asum3 = asum3 + array3[i];
    for (j=0; j<N; j++)
      msum1 = msum1 + mat1[i][j];
    for (j=0; j<N; j++)
      msum2 = msum2 + mat2[i][j];
    for (j=0; j<N; j++)
      msum3 = msum3 + mat3[i][j];
  }
  atotal2 = asum1 + asum2 + asum3;
  mtotal2 = msum1 + msum2 + msum3;

  if (dbl_is_equal(atotal1, atotal2) && dbl_is_equal(mtotal1, mtotal2)) {
    hai = (double *)calloc(N-10,sizeof(double));
    mtotal1 = mtotal1/(double)(N*N);
    mtotal2 = mtotal2/(double)(N*N);
    for (i=0; i<N-10; i++) {
      hai[i] = fmod(hai[i],(double)2.0);
      for (j=0; j<N-10; j++)
	hai[j] = hai[i] + array3[j+2]*(mtotal1*mat3[i][j+3]+mtotal2*mat3[i][j+4]);
    }
  }
  else {
    hai = (double *)calloc(N-15,sizeof(double));
    mtotal1 = mtotal1/(double)N;
    mtotal2 = mtotal2/(double)N;
    for (i=0; i<N-15; i++) {
      hai[i] = fmod(hai[i],(double)2.0);
      for (j=0; j<N-15; j++)
	hai[j] = hai[i] + array3[j+2]*(mtotal1*mat3[i][j+3]+mtotal2*mat3[i][j+4]);
    }
  }

  total = DZ;
#pragma clang loop unroll_count(10)
  for (i=10; i<N-40; i=i+5)
    total = total + hai[i] + hai[i+1] + hai[i+2] + hai[i+3] + hai[i+4];

  total = fmod(total,(double)H);
  for (; i<N-20; i=i+2)
    total = total + hai[i];

  if (7.5 < total && total < 8.1)
    fprintf(stdout, "*** OK ***\n");
  else
    system("echo NG; echo NG; echo NG");
}

int comp(double *a, double *b)
{
  int judg1, judg2, judg3;

  judg1 = *a > *b;

  if (judg1)
    return 1;
  else
    goto next1;
 next1:
  judg2 = *a == *b;

  if (judg2)
    return 0;
  else
    goto next2;
 next2:
  judg3 = *a < *b;

  if (judg3)
    return -1;
  else
    goto err;

 err:
  printf("Error !\n");
  abort();
  return 0;
}

static bool dbl_is_equal(double a, double b) {
  double diff, eps;
  if( a == b ) {
    return true;
  }
  if( isnan(a) || isnan(b) ) {
    return false;
  }
  if( isinf(a) && isinf(b) && a > 0 && b > 0
      || isinf(a) && isinf(b) && a < 0 && b < 0 ) {
    return true;
  }
  if( isinf(a) && a > 0 && b > DBL_MAX * (1.0 - sqrt(DBL_EPSILON)) 
      || isinf(a) && a < 0 && b < DBL_MIN * (1.0 - sqrt(DBL_EPSILON))
      || isinf(b) && b > 0 && a > DBL_MAX * (1.0 - sqrt(DBL_EPSILON))
      || isinf(b) && b < 0 && a < DBL_MIN * (1.0 - sqrt(DBL_EPSILON)) ) {
    return true;
  }
  if( a == 0.0 && fabs(b) < sqrt(DBL_EPSILON)
      || b == 0.0 && fabs(a) < sqrt(DBL_EPSILON) ) {
    return true;
  }
  eps = DBL_EPSILON * fmin(fabs(a), fabs(b)) * 100.0;
  diff = fabs(a - b);
  return (diff < eps);
}
