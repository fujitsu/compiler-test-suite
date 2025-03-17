#include <iostream>

using namespace std;

namespace nm1 {
  class ABC {
  public:
    void func () {
      cout << "ABC:func()" << endl;
    }
  };

  class DEF {
  public:
    int func (int n) {
      int i, ret;

      cout << "DEF:func()" << endl;
      ret = 0;
      for (i = 0; i < n; i++) {
	ret += i;
      }
      return ret;
    }
  };
}

class GHI {
public:
  int func (int n) {
    int i, ret;

    cout << "GHI:func()" << endl;
    ret = 0;
    for (i = 0; i < n; i++) {
      ret += n;
    }
    return ret;
  }
};


int main() {
  nm1::ABC aa;
  nm1::DEF dd;
  GHI gg;
  int ret;

  aa.func();
  ret = dd.func(77);
  ret += gg.func(10);

  if (ret != 3026)
    {
      std::cout << "NG:";
      std::cout << ret << std::endl;
    }
  else
    {
      std::cout << "OK";
      std::cout << std::endl;
    }
  return 0;
}
