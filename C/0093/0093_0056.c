#include <stdio.h>
int main( ) {
long long int a;
a= (-1LL) + (-1LL);
if (a == -2LL) printf("(1) ok\n");
          else printf("(1) ng %x %x\n"
                      ,*(int *)&a , *(((int *)&a)+1));
}
