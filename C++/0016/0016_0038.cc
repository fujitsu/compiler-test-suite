
namespace NA {
  template<class T> class TA {
  public:
    template<class T1> class TB {
    };
  };
}
using namespace NA;
#include <stdio.h>
int main() {
  TA<char>::TB<short> t;
  puts("ok");
}
