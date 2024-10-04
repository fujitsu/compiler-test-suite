#include <stdio.h>
int main()
{
_Bool a;
_Complex double b;
_Complex long double c;
_Complex float d;
printf("%d\n", sizeof(a));
printf("%d\n", sizeof(b));
printf("%d\n", sizeof(c));
printf("%d\n", sizeof(d));
printf("%d\n", sizeof(_Bool));
printf("%d\n", sizeof(_Complex double));
printf("%d\n", sizeof(_Complex long double));
printf("%d\n", sizeof(_Complex float));
}
