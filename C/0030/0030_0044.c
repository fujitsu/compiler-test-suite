#include <stdio.h>

struct t { double c; float a[5]; } ;
struct s { double c; float a[5]; struct t x; } ;

struct s x = { .c = 2, {[1]=4,5}, .a[4] = 1, {.a[1]=1,2} };
int main()
{
  if (x.a[0]   == 0.000000e+00) printf("OK1\n");
  else                          printf("NG1:%e\n", x.a[0]);
  if (x.a[1]   == 4.000000e+00) printf("OK2\n");
  else                          printf("NG2:%e\n", x.a[1]);
  if (x.a[2]   == 5.000000e+00) printf("OK3\n");
  else                          printf("NG3:%e\n", x.a[2]);
  if (x.a[3]   == 0.000000e+00) printf("OK4\n");
  else                          printf("NG4:%e\n", x.a[3]);
#ifdef __EDG__
  if (x.a[4]   == 0.000000e+00) printf("OK5\n");
  else                          printf("NG5:%e\n", x.a[4]);
#else 
  if (x.a[4]   == 1.000000e+00) printf("OK5\n");
  else                          printf("NG5:%e\n", x.a[4]);
#endif 
  if (x.x.a[1] == 1.000000e+00) printf("OK6\n");
  else                          printf("NG6:%e\n", x.x.a[1]);
  if (x.x.a[2] == 2.000000e+00) printf("OK7\n");
  else                          printf("NG7:%e\n", x.x.a[2]);
  if (x.c      == 2.000000e+00) printf("OK8\n");
  else                          printf("NG8:%e\n", x.c);

  return 0;
}
