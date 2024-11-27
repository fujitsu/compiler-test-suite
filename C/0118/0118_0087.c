
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 1200

void sub(double *a, double *b, int *c1, int *c2, int *c3, int *c4,
	 int *c5, int *c6, int *c7, int *c8, int *c9, int *c10,
	 int n, int k)
{
  int i;
  for (i=0; i<n; i=i+k) {
    a[c1[c2[c3[c4[c5[c6[c7[c8[c9[c10[i]]]]]]]]]]] =
      a[c1[c2[c3[c4[c5[c6[c7[c8[c9[c10[i]]]]]]]]]]] +
      b[c1[c2[c3[c4[c5[c6[c7[c8[c9[c10[i]]]]]]]]]]];
  }
  return;
}

int main()
{
  double a[loop_num], b[loop_num];
  int c1[loop_num],c2[loop_num],c3[loop_num],c4[loop_num],c5[loop_num];
  int c6[loop_num],c7[loop_num],c8[loop_num],c9[loop_num],c10[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0;
    b[i] = 2.0;
    c1[i] = i;
    c2[i] = i;
    c3[i] = i;
    c4[i] = i;
    c5[i] = i;
    c6[i] = i;
    c7[i] = i;
    c8[i] = i;
    c9[i] = i;
    c10[i] = i;
  }

  sub(a,b,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,loop_num,10);

  result = 0;
  for (i=0; i<loop_num; i++) {
    result += a[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
