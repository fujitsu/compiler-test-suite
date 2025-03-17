namespace A {
  enum ea {ea1,ea2};
}
namespace B {
  enum eb {eb1,eb2};
}
namespace C {
  enum ec {ec1,ec2};
}
namespace D {
  enum ed {ed1,ed2};
}
using namespace A;
int a;
static void f(){
  a++;
}
enum E {e1,e2};
enum E0 {};
#include <stdio.h>
int main(){
  using namespace B;
  enum e1 {e11=5,e12};
  a = e11;
  {
    using namespace C;
    enum e2 {e21=10,e22};
    a = e22;
    a++;
  }
  f();

  puts("ok");
}
