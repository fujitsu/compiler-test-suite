namespace NA {
  template <class T> class TA{
  public:
    class CA{
    public:
      class CB {
      };
    };
  };
}
using namespace NA;
void func(){
  TA<int>::CA x;
  TA<char>::CA::CB y;
}
#include <stdio.h>
int main(){puts("ok");
}
