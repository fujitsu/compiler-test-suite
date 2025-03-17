namespace NA {
  template <class T> class TA{
  public:
    class CA{
    public:
      class CB {
	int a;
      };
    };
  };
}
using namespace NA;
TA<int>::CA x;
TA<char>::CA::CB y;





template <class T> class TA2 {
public:
  class CA {
  };
  class CB {
  }cbobj;
};  
#include <stdio.h>
int main(){
  TA2<int> t;
  TA2<char>::CA caobj;
  puts("ok");
}
      








