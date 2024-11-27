#include <stdlib.h>
#include <string.h>
#include <math.h>
#include  <stdio.h>
int sub(char *p);
char *fun();
int main()
{
    register char *p;
    char buf[100];
    p=fun();
    strcpy(buf,p);
    sub(buf);
exit (0);
}
char *fun()
{
    return "abc";
}
int sub(p)
char *p;
{
   printf("%s\n",p);
   if( *(p+0) == 'a' &&
       *(p+1) == 'b' &&
       *(p+2) == 'c' ) puts(" OK ");
   else                puts(" NG ");
}
