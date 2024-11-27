#include <stdio.h>

long double foo(long double  *p)
{
 return *p;
}

int main()
{
#if defined(i386) || defined(__x86_64__) || defined(__GNUC__) || defined(__aarch64__) || defined(__HPC_ACE__)
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.98668e-58 );
  printf("%g \n",(double )1.9867e-58 );
  printf("%g \n",(double )1.99134e-58 );
  printf("%g \n",(double )3.17996e-58 );
  printf("%g \n",(double )1 );
#else
  static char x[31] = { 63,63,63,63,63,63,63,
                        63,63,63,63,63,63,63,
                        63,63,-1,0,0,0,0,
                        0,0,0,0,0,0,0,0,0,0 } ;
  printf("%g \n",(double )foo((long double *)&x[0]));
  printf("%g \n",(double )foo((long double *)&x[1]));
  printf("%g \n",(double )foo((long double *)&x[2]));
  printf("%g \n",(double )foo((long double *)&x[3]));
  printf("%g \n",(double )foo((long double *)&x[4]));
  printf("%g \n",(double )foo((long double *)&x[5]));
  printf("%g \n",(double )foo((long double *)&x[6]));
  printf("%g \n",(double )foo((long double *)&x[7]));
  printf("%g \n",(double )foo((long double *)&x[8]));
  printf("%g \n",(double )foo((long double *)&x[9]));
  printf("%g \n",(double )foo((long double *)&x[10]));
  printf("%g \n",(double )foo((long double *)&x[11]));
  printf("%g \n",(double )foo((long double *)&x[12]));
  printf("%g \n",(double )foo((long double *)&x[13]));
  printf("%g \n",(double )foo((long double *)&x[14]));
  printf("%g \n",(double )foo((long double *)&x[15]));
#endif
  return 0;
}
