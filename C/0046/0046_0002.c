
#include <stdio.h>

int main(void)
{
  double r1,r2,r3,r4,r5;
  float  q1,q2,q3,q4,q5;
  long long int i1,i2,i3,i4,i5;
  int j1,j2,j3,j4,j5;
  int mm;
  
  mm = 1;
  
  
  r1 = 1.0;
  r2 = 2.0;
  r3 = 3.0;
  r4 = 4.0;
  r5 = r1 + r2 + r3 + r4;
  q1 = 1.0f;
  q2 = 2.0f;
  q3 = 3.0f;
  q4 = 4.0f;
  q5 = q1 + q2 + q3 + q4;
  
  
  i1 = 1LL;
  i2 = 2LL;
  i3 = 3LL;
  i4 = 4LL;
  i5 = i1 + i2 + i3 + i4;
  j1 = 1;
  j2 = 2;
  j3 = 3;
  j4 = 4;
  j5 = j1 + j2 + j3 + j4;
  

  if ((long long int)r5 != (long long int)q5) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", (long long int)r5, (long long int)q5);
  }
  if ((long long int)r5 != (long long int)i5) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", (long long int)r5, (long long int)i5);
  }
  if ((long long int)r5 != (long long int)j5) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", (long long int)r5, (long long int)j5);
  }
  if ((long long int)q5 != (long long int)i5) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", (long long int)q5, (long long int)i5);
  }
  if ((long long int)q5 != (long long int)j5) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", (long long int)q5, (long long int)j5);
  }
  if ((long long int)i5 != (long long int)j5) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", (long long int)i5, (long long int)j5);
  }
  
  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
