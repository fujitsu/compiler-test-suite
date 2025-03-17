#include <iostream>

class testclass {
public:
  void print(float f1) {
    std::cout << f1 << std::endl;
    return;
  }
  void test0006() {
    std::cout << "test0006 begin\n";

    float a0 = 0xff - 1;

    print(a0);
    std::cout << "test0006 end\n\n";

    return;
  }
};
int main() {
  testclass a;
  a.test0006();
}
