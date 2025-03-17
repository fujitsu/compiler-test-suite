
class CA {
public:
  struct SA {}sa;
  union UA {}ua1;
  union {}ua2;
  enum EA {}ea1;
  enum {}ea2;
}ca;

namespace NB {
  namespace {
    namespace NB1 {
      union UB {};
      enum EB {};
    }
    using namespace NB1;
  }
}
using namespace NB;
UB ub;
EB eb;

template<class T> class TC {
public:
  union UC {};
};
TC<char>::UC uc;

#include <stdio.h>
int main(){puts("ok");
}
