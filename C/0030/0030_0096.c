#include <stdio.h>
int f(void);
int main()
{
   f();
   char *p = __func__;
   printf("%s\n", p);
}

int 
f (void)
{
   char *p = __func__;
   printf("%s\n", p);
   static int i = 100;
}
