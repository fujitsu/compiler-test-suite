#include <iostream>
using namespace std;

class A {
 public:
   virtual operator char*();
   };

struct S : public A {
   operator char*();
   };

A::operator char*() { cout << "ng\n"; return "A"; }
S::operator char*() { cout << "ok\n"; return "S"; }

int main() {
   A a;
   S s;
   A* p=&s;
   (char *)(*p); 

   }
