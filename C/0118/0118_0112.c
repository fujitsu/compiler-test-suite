
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 10420

void sub1(double *a1, double *b1,
	  double *a2, double *b2,
	  double *a3, double *b3,
	  double *a4, double *b4,
	  double *a5, double *b5,
	  double *a6, double *b6,
	  double *a7, double *b7,
	  double *a8, double *b8,
	  int n, int k, int *c)
{
  int i;


  i = 0;
  while (i<n) {
    a1[i] = a1[i] + b1[i];
    i++;
  }

  i = 0;
  do {
    a2[i] = a2[i] + b2[i];
    i++;
  } while (i<n);


  i = 0;
  while (i<n) {
    a3[i] = a3[i] + b3[i];
    i = i + 100;
  }

  i = 0;
  do {
    a4[i] = a4[i] + b4[i];
    i = i + 100;
  } while (i<n);


  i = 0;
  while (i<n) {
    a5[i] = a5[i] + b5[i];
    i = i + k;
  }

  i = 0;
  do {
    a6[i] = a6[i] + b6[i];
    i = i + k;
  } while (i<n);
  

  i = 0;
  while (i<n) {
    a7[c[i]] = a7[c[i]] + b7[c[i]];
    i = i + k;
  }

  i = 0;
  do {
    a8[c[i]] = a8[c[i]] + b8[c[i]];
    i = i + k;
  } while (i<n);
  
  return;
}

int main()
{
  double a1[loop_num], b1[loop_num];
  double a2[loop_num], b2[loop_num];
  double a3[loop_num], b3[loop_num];
  double a4[loop_num], b4[loop_num];
  double a5[loop_num], b5[loop_num];
  double a6[loop_num], b6[loop_num];
  double a7[loop_num], b7[loop_num];
  double a8[loop_num], b8[loop_num];
  int c[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a1[i] = 1.0;
    b1[i] = 1.0;
    a2[i] = 1.0;
    b2[i] = 1.0;
    a3[i] = 1.0;
    b3[i] = 1.0;
    a4[i] = 1.0;
    b4[i] = 1.0;
    a5[i] = 1.0;
    b5[i] = 1.0;
    a6[i] = 1.0;
    b6[i] = 1.0;
    a7[i] = 1.0;
    b7[i] = 1.0;
    a8[i] = 1.0;
    b8[i] = 1.0;
    c[i] = i;
  }

  sub1(a1,b1,a2,b2,a3,b3,a4,b4,a5,b5,a6,b6,a7,b7,a8,b8,loop_num,10,c);

  result = 0;

  for (i=0; i<loop_num; i++) {
    result += a1[i] + a2[i] + a3[i] + a4[i] + a5[i] + a6[i] + a7[i] + a8[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng ... %d\n",result);
  }
  return 0;
}
