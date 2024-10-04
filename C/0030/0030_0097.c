#include <stdio.h>
int f(void);
int main()
{
f();
static char ff[] = "main";
printf("%s\n", ff);
}
int 
f (void)
{
static char ff[] = "ffff";
printf("%s\n", ff);
}
