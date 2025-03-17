#include <iostream>

class testclass {
public:
  void print(double d1) {
    std::cout << d1 << std::endl;
    return;
  }
  void print(long double d1) {
    std::cout << d1 << std::endl;
    return;
  }
  void test0002() {
    std::cout << "test0002 begin\n";
    double a0 = 0x00P-0;
    double a1 = 0x01P-1;
    double a2 = 0x02P-2;
    double a3 = 0x03P-3;
    double a4 = 0x04P-0;
    double a5 = 0x05P-1;
    double a6 = 0x06P-2;
    double a7 = 0x07P-3;
    double a8 = 0x08P-0;
    double a9 = 0x09P-1;
    double aa = 0x0aP-2;
    double ab = 0x0bP-3;
    double ac = 0x0cP-0;
    double ad = 0x0dP-1;
    double ae = 0x0eP-2;
    double af = 0x0fP-3;

    print(a0);
    print(a1);
    print(a2);
    print(a3);
    print(a4);
    print(a5);
    print(a6);
    print(a7);
    print(a8);
    print(a9);
    print(aa);
    print(ab);
    print(ac);
    print(ad);
    print(ae);
    print(af);
    std::cout << "test0002 end\n\n";

    return;
  }
  void test0003() {
    std::cout << "test0003 begin\n";
    long double a0 = 0x00.0P+0;
    long double a1 = 0x01.1P+1;
    long double a2 = 0x02.2P+2;
    long double a3 = 0x03.3P+3;
    long double a4 = 0x04.4P+0;
    long double a5 = 0x05.5P+1;
    long double a6 = 0x06.6P+2;
    long double a7 = 0x07.7P+3;
    long double a8 = 0x08.8P+0;
    long double a9 = 0x09.9P+1;
    long double aa = 0x0a.AP+2;
    long double ab = 0x0b.BP+3;
    long double ac = 0x0c.CP+0;
    long double ad = 0x0d.DP+1;
    long double ae = 0x0e.EP+2;
    long double af = 0x0f.FP+3;

    print(a0);
    print(a1);
    print(a2);
    print(a3);
    print(a4);
    print(a5);
    print(a6);
    print(a7);
    print(a8);
    print(a9);
    print(aa);
    print(ab);
    print(ac);
    print(ad);
    print(ae);
    print(af);
    std::cout << "test0003 end\n\n";

    return;
  }
};
int main() {
  testclass a;
  a.test0002();
  a.test0003();
  return 0;
}
