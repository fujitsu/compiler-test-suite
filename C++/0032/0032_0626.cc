





#include <stdio.h>

typedef int X;

class C1 {
  public:
    class C2 {
      public:
        typedef char X;
        X c;
    } c2;
    typedef short X;
    X s;
} c1;

X i;
int main()
{
    if( sizeof(i) == sizeof(int) &&
        sizeof(c1.s) == sizeof(short) &&
        sizeof(c1.c2.c) == sizeof(char) )
        printf("ok\n");
    else
        printf("ng\n");
}
