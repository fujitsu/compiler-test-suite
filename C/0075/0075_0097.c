#include <stdio.h>
int main()
{
#if A||B||C||D||E
printf("ng\n");
#else
printf("ok\n");
#endif
}
