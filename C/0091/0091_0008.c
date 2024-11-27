#include <stdio.h>

double foo(double  *p)
{
  return *p;
}

int main()
{
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  static char x[15] = { 63,63,63,63,63,63,63,
			63,-16,0,0,0,0,0,0 };
  static char y[15] = { 00,-16,63,63,63,63,63,
			63,63,0,0,0,0,0,0 };
  printf("%g \n",foo((double *)&x[0]));
  printf("%g \n",foo((double *)&y[1]));
  printf("%g \n",0.000476792 );
  printf("%g \n",0.000476792 );
  printf("%g \n",0.000476792 );
  printf("%g \n",0.000476833 );
  printf("%g \n",0.000487328 );
  printf("%g \n",1.0 );
#elif defined(__GNUC__) || defined(__HPC_ACE__)
  printf("%g \n",0.000476792 );
  printf("%g \n",0.000476792 );
  printf("%g \n",0.000476792 );
  printf("%g \n",0.000476792 );
  printf("%g \n",0.000476792 );
  printf("%g \n",0.000476833 );
  printf("%g \n",0.000487328 );
  printf("%g \n",1.0 );
#else
  static char x[15] = { 63,63,63,63,63,63,63,
			63,-16,0,0,0,0,0,0 };
  printf("%g \n",foo((double *)&x[0]));
  printf("%g \n",foo((double *)&x[1]));
  printf("%g \n",foo((double *)&x[2]));
  printf("%g \n",foo((double *)&x[3]));
  printf("%g \n",foo((double *)&x[4]));
  printf("%g \n",foo((double *)&x[5]));
  printf("%g \n",foo((double *)&x[6]));
  printf("%g \n",foo((double *)&x[7]));
#endif
  return 0;
}
