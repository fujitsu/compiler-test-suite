namespace AAA {
  int a;
  class AC {};
  struct AS {int c;}asobj;
  union AU {int c;}auobj;
  template <class T> class ATC {T a;};
  ATC<int> atcobj;
  template <class T> struct ATS {T a;};
  ATS<int> atsobj;
  template <class T> union ATU {T a;};
  ATU<int> atuobj;
}
namespace BBB {
  int b;
  class BC {};
}
namespace CCC {
  int c;
  class CC {};
}
namespace XXX {
  int x;
  class XC {};
}
static void f(){
  namespace ND = AAA;
  using namespace AAA;
  a++;
}
using namespace XXX;
class C {int c;}cobj;
struct S {int c;}sobj;
union U {int c;}uobj;
template <class T> class TC {T a;};
TC<int> tcobj;
template <class T> struct TS {T a;};
TS<int> tsobj;
template <class T> union TU {T a;};
TU<int> tuobj;
#include <stdio.h>
int main(){
  namespace NA = AAA;
  using namespace AAA;
  a++;
  {
    namespace NB = BBB;
    using namespace BBB;
    b++;
    {
      namespace NC = CCC;
      using namespace NC;
      c++;
    }
  }
  f();

  puts("ok");
}
