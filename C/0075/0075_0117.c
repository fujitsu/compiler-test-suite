#include <stdio.h>
int main( ) {
struct  {
          unsigned long long    int a:32;
          unsigned long long    int b:32;
         } t;
t.a=1LL;
t.b=1LL;
       if (t.a==1LL && t.b==1LL) printf("**P075064 ok **\n");
       else                      printf("**P075064 ng **\n");
}
