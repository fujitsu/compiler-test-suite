#include <stdio.h>

struct t { int c; int a[5]; } ;
struct s { int c; int a[5]; struct t x; } ;

struct s x = { .c = 2, {[1]=4,5}, .a[4] = 1, {.a[1]=1,7} };
int main()
{
  if (x.a[0]   == 0) printf("OK1\n");
  else                          printf("NG1:%d\n", x.a[0]);
  if (x.a[1]   == 4) printf("OK2\n");
  else                          printf("NG2:%d\n", x.a[1]);
  if (x.a[2]   == 5) printf("OK3\n");
  else                          printf("NG3:%d\n", x.a[2]);
  if (x.a[3]   == 0) printf("OK4\n");
  else                          printf("NG4:%d\n", x.a[3]);
#ifdef __EDG__
  if (x.a[4]   == 0) printf("OK5\n");
  else                          printf("NG5:%d\n", x.a[4]);
#else 
  if (x.a[4]   == 1) printf("OK5\n");
  else                          printf("NG5:%d\n", x.a[4]);
#endif 
  if (x.x.a[0] == 0) printf("OK6\n");
  else                          printf("NG6:%d\n", x.x.a[1]);
  if (x.x.a[1] == 1) printf("OK7\n");
  else                          printf("NG7:%d\n", x.x.a[1]);
  if (x.x.a[2] == 7) printf("OK8\n");
  else                          printf("NG8:%d\n", x.x.a[2]);
  if (x.c      == 2) printf("OK9\n");
  else                          printf("NG9:%d\n", x.c);

  return 0;
}
