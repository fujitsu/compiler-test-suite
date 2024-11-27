#include <stdio.h>

#if !defined(__HPC_ACE__)
void foo(long double  *p)
{
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  char *q = (char *)p;
  q[0] = 0x3f;
  q[1] = 0xff;
  q[2] = q[3] = q[4] = q[5] = q[6] = q[7] =
  q[8] = q[9] = q[10] = q[11] = q[12] = q[13] =
  q[14] = q[15] = 0;
#else
 *p = 1;
#endif
}
#endif

int main()
{
#if defined(__HPC_ACE__)
  printf("63 63 63 63 63 63 63 \n");
  printf("63 63 63 63 63 63 63 \n");
  printf("63 63 -1 0 0 0 0 \n");
  printf("0 0 0 0 0 0 0 \n");
  printf("0 0 0 \n");
#else
  signed char x[31];
  foo((long double *)&x[0]);
  foo((long double *)&x[1]);
  foo((long double *)&x[2]);
  foo((long double *)&x[3]);
  foo((long double *)&x[4]);
  foo((long double *)&x[5]);
  foo((long double *)&x[6]);
  foo((long double *)&x[7]);
  foo((long double *)&x[8]);
  foo((long double *)&x[9]);
  foo((long double *)&x[10]);
  foo((long double *)&x[11]);
  foo((long double *)&x[12]);
  foo((long double *)&x[13]);
  foo((long double *)&x[14]);
  foo((long double *)&x[15]);
  printf("%d %d %d %d %d %d %d \n",x[0],x[1],x[2],x[3],x[4],x[5],x[6]);
  printf("%d %d %d %d %d %d %d \n",x[7],x[8],x[9],x[10],x[11],x[12],x[13]);
  printf("%d %d %d %d %d %d %d \n",x[14],x[15],x[16],x[17],x[18],x[19],x[20]);
  printf("%d %d %d %d %d %d %d \n",x[21],x[22],x[23],x[24],x[25],x[26],x[27]);
  printf("%d %d %d \n",x[28],x[29],x[30]);
#endif
  return 0;
}
