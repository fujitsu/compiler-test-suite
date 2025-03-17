class Dummy{
public:
  int a;
}dummy_obj;
namespace NA {
  int na_a;
  int *na_b;
  char (*na_c)[2];
  short (*na_d)();
  Dummy na_e;
  Dummy &na_f=dummy_obj;
  int Dummy::*na_g;
  void na_h(int){}
  class NA_CA {};
  struct NA_SA{};
  union  NA_UA {};
  enum NA_EA{e1};
  typedef  int NA_TA;
  template <class T, int i > class NA_TPA {};
  template <class T> void NA_Func(T x){}
  namespace NA_N1 {
    int NA_N1_a;
  }
}
using namespace NA;
NA::NA_TPA<int, 10> tt;
void f(){
  NA_Func(100);
}

namespace NB {
  using NA::na_a;
  using NA::na_b ;
  using NA::na_c;
  using NA::na_d;
  using NA::na_e;
  using NA::na_f;
  using NA::na_g;
  using NA::na_h;
  using NA::NA_CA;
  using NA::NA_SA;
  using NA::NA_UA;
  using NA::NA_EA;
  using NA::NA_TA;
  using NA::NA_TPA;
  using NA::NA_Func;

}

namespace NC {
  using namespace NA;
  using namespace NA::NA_N1;
  using namespace NC;
}

#include <stdio.h>
int main(){ f(); 
 puts("ok"); 
}
