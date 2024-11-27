#include <stdio.h>
#if defined(__cplusplus)
#include <math.h>
long double d()
{
  return;
}
long double f()
{

}
int main()
{
  d();
  f();
  printf("OK\n");
exit (0);
}
#else
int main()
{
  printf("OK\n");
  return 0;
}
#endif
