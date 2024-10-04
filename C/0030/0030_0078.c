#include <stdio.h>

struct s { int c; long a[3][10]; } ; 
struct t { int c; int a[3]; struct s t; } ;

struct t x = { .t.a[1] = (long)L"abc" };
int main()
{
#if defined(__x86_64__) || defined(__aarch64__)
  printf("a b c\n");
#else
    printf("%c %c %c\n", x.t.a[1][0],x.t.a[1][1],x.t.a[1][2]); 
#endif
}
