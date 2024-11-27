
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 1350

void sub(double *a1, double *a2, double *a3, double *a4, double *a5, 
	 double *a6, double *a7, double *a8, double *a9, double *a10,
	 double *a11, double *a12, double *a13, double *a14, double *a15, double *a16, int n)
{
  int i;
  for (i=0; i<n; i=i+40) {
    a1[i] = a2[i] + a3[i] + a4[i] + a5[i] + a6[i] + a7[i] + a8[i] +
      a9[i] + a10[i] + a11[i] + a12[i] + a13[i] + a14[i] + a15[i] + a16[i] ;
  }
  return;
}

int main()
{
  double a1[loop_num],a2[loop_num],a3[loop_num],a4[loop_num],a5[loop_num],a6[loop_num];
  double a7[loop_num],a8[loop_num],a9[loop_num],a10[loop_num],a11[loop_num],a12[loop_num];
  double a13[loop_num],a14[loop_num],a15[loop_num],a16[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a1[i] = 1.0;
    a2[i] = 1.0;
    a3[i] = 1.0;
    a4[i] = 1.0;
    a5[i] = 1.0;
    a6[i] = 1.0;
    a7[i] = 1.0;
    a8[i] = 1.0;
    a9[i] = 1.0;
    a10[i] = 1.0;
    a11[i] = 1.0;
    a12[i] = 1.0;
    a13[i] = 1.0;
    a14[i] = 1.0;
    a15[i] = 1.0;
    a16[i] = 1.0;
  }

  sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,loop_num);

  result = 0;
  for (i=0; i<loop_num; i++) {
    result += a1[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
