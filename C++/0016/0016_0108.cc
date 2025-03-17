namespace A {
  enum ea {ea1,ea2};
}
namespace B {
  int x;
  enum eb {eb1,eb2};
}
namespace C {
  enum ec {ec1,ec2};
  class cc {int ccc;};
}
namespace D {
  enum ed {ed1,ed2};
  class cd {int ddd;};
}
using namespace A;
using B::x;
using B::eb;
#include <stdio.h>
int main(){
  using namespace A;
  using C::cc;
  using C::ec;
  x++;
  {
    using namespace A;
    using D::cd;
    using D::ed;
    x++;
  }
  x++;

  puts("ok");
}
