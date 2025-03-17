namespace AAA { int a; }
namespace BBB { int b; }
namespace CCC { int c; }
static void f(){
  namespace D = AAA;
  using namespace AAA;
  a++;
}
#include <stdio.h>
int main(){
  namespace A = AAA;
  using namespace AAA;
  a++;
  {
    namespace B = BBB;
    using namespace BBB;
    b++;
    {
      namespace C = CCC;
      using namespace C;
      c++;
    }
  }
  f();

  puts("ok");
}
