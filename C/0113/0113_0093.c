#include <stdio.h>


#include <math.h>
#define N   10
#define ANS 880
int main()
{
  float f1[N], f2[N];
  float t1[N], t2[N];
  float tmp;
  float f3[N][N], f4[N][N];
  float t3[N][N], t4[N][N];
  int ok = 0;
  int i, j;

  for (i=0; i<N; i++) {
    f1[i] = 1.0F;
    f2[i] = 1.0F;
    t1[i] = 1.1F;
    t2[i] = 1.1F;
    for (j=0; j<N; j++) {
      f3[i][j] = f1[i];
      f4[i][j] = f2[i];
      t3[i][j] = t1[i];
      t4[i][j] = t1[i];
    }
  }


  for (i=0; i<N; i++) {
    if (f1[i] == 1.0)
      ok += 1;
    else
      printf("NG\n");
    if (f1[i] == f2[i])
      ok += 1;
    else
      printf("NG\n");
    if (t1[i] != 1.1)
      ok += 1;
    else
      printf("NG\n");
    if (t1[i] == t2[i])
      ok += 1;
    else
      printf("NG\n");
    tmp = f1[i];
    if (tmp == 1.0)
      ok += 1;
    else
      printf("NG\n");
    if (tmp == f2[i])
      ok += 1;
    else
      printf("NG\n");
    tmp = t1[i];
    if (tmp != 1.1)
      ok += 1;
    else
      printf("NG\n");
    if (tmp == t2[i])
      ok += 1;
    else
      printf("NG\n");
  }

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      if (f3[i][j] == 1.0)
	ok += 1;
      else
	printf("NG\n");
      if (f3[i][j] == f3[i][j])
	ok += 1;
      else
	printf("NG\n");
      if (t3[i][j] != 1.1)
	ok += 1;
      else
	printf("NG\n");
      if (t3[i][j] == t4[i][j])
	ok += 1;
      else
	printf("NG\n");
      tmp = f3[i][j];
      if (tmp == 1.0)
	ok += 1;
      else
	printf("NG\n");
      if (tmp == f4[i][j])
	ok += 1;
      else
	printf("NG\n");
      tmp = t3[i][j];
      if (tmp != 1.1)
	ok += 1;
      else
	printf("NG\n");
      if (tmp == t4[i][j])
	ok += 1;
      else
	printf("NG\n");
    }
  }



  if (ok == ANS) 
    printf("OK\n");
}
