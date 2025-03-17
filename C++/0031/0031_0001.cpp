#include <iostream>

using namespace std;

namespace nm1 {
  class DEF {
  public:
    int func (int n) {
      int i, ret;

      ret = 0;
      for (i = 0; i < n; i++) {
	ret += i;
      }
      return ret;
    }
  };
}

class DEF {
public:
  int func (int n) {
    int i, ret;
    
    ret = 0;
    for (i = 0; i < n+100; i++) {
      ret += i;
    }
    return ret;
  }
};

int main() {
  nm1::DEF dd;
  DEF d2;
  int ret;

  ret = dd.func(77);
  ret += d2.func(10);
  ret += d2.func(30);

  if (ret == 17306)
    std::cout << "OK" << std::endl;
  else
    std::cout << "NG:" << ret << std::endl;

  return 0;
}
