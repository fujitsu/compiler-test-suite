#include <cstdio>

namespace B {
  inline namespace V1 {
    const char *func() {return "V1";}
  }

  inline namespace V2 {
    const char *func() {return "V2";}
  }
}

using namespace B;

int main()
{
  printf("%s\n", B::V1::func());
  printf("%s\n", B::V2::func());
  
  
}
