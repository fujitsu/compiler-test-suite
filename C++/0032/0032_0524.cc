#include <stdio.h>

class A {
  public:
  enum EE {in=10};
};

static const int input=A::in ;
int main()
{
  int ary[input];
  switch (sizeof (ary) / sizeof (ary[0]))
    {
      case input : 
       printf("ok\n");
       break ;
      default :
       printf("ng \n");
    }
}
