#include <string.h>
#include  <stdio.h>
void sub(char *p);
char *fun();
int main()
{
    register char *p;
    char buf[100];
    p=fun();
    strcpy(buf,p);
    sub(buf);
}
char *fun()
{
    return "abc";
}
void sub(char *p)
{
   printf("%s\n",p);
   if( *(p+0) == 'a' &&
       *(p+1) == 'b' &&
       *(p+2) == 'c' ) puts(" OK ");
   else                puts(" NG ");
}
