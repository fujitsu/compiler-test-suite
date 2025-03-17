#include <iostream>
using namespace std;

class C1 {
public:
  C1() { std::cout << "C(C1) "; }
  ~C1() { cout << "D(C1) "; }
};
class C2 {
public:
  C2() { cout << "C(C2) "; }
  ~C2() { cout << "D(C2) "; }
};

C1 obj1;
C2 obj2;

__attribute__((destructor)) void a() { cout << endl; }
int main() { return 0; }
