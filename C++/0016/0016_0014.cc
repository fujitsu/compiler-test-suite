
    template<class T>  class AT {
      void func(){}
      class B {T a;};
    };
    AT<int > x1;
    AT<char> x2;
#include <stdio.h>
int main()
{
  puts("ok");
}
