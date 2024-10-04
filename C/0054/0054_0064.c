#include<stdio.h>
 

int main()
{
  float       a;
  double      b;
  long double c;

  printf("02 START\n");

  a = (float)(float)1.23456e11f;
  if (a == 1.23456e11f)
    printf("--- 02 (02-01) OK ---\n");
  else {
    printf("*** 02 (02-01) NG ***\n");
    printf("A = %e\n" , a);
  }

  a = (float)(float)-1.23456e-11f;
  if (a == -1.23456e-11f)
    printf("--- 02 (02-02) OK ---\n");
  else {
    printf("*** 02 (02-02) NG ***\n");
    printf("A = %e\n" , a);
  }

  b = (double)(double)1.3e30;
  if (b == 1.3e30)
    printf("--- 02 (02-03) OK ---\n");
  else {
    printf("*** 02 (02-03) NG ***\n");
    printf("B = %e\n" , b);
  }

  b = (double)(double)-1.4e30;
  if (b == -1.4e30)
    printf("--- 02 (02-04) OK ---\n");
  else {
    printf("*** 02 (02-04) NG ***\n");
    printf("B = %e\n" , b);
  }

  c = (long double)(long double)1.5e+50l;
  if (c == 1.5e+50l)
    printf("--- 02 (02-05) OK ---\n");
  else {
    printf("*** 02 (02-05) NG ***\n");
    printf("C = %e\n" , c);
  }

  c = (long double)(long double)-1.6e-50l;
  if (c == -1.6e-50l)
    printf("--- 02 (02-06) OK ---\n");
  else {
    printf("*** 02 (02-06) NG ***\n");
    printf("C = %e\n" , c);
  }

  printf("02 END  \n");
}
