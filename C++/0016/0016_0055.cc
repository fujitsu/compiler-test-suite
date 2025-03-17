
namespace {
  class A {};
}
namespace N {
  namespace {
    class B {};
    namespace N2 {
      class C {};
    }
    using namespace N2;
  }
}
using namespace N;
#include <stdio.h>
int main(){puts("ok");
}
