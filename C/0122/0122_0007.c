#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
#if A||B||C||D||E
printf("ng\n");
#else
printf("ok\n");
#endif
exit (0);
}
