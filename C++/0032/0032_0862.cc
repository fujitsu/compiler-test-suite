
#include <iostream>
using namespace std;

int A_ctor_count=0;
int X_ctor_count=0;
int A_dtor_count=0;
int X_dtor_count=0;

class A {
 int i;
 public:
  A() {
     A_ctor_count++;

  }
  ~A() {
     A_dtor_count++;

  }
};

class X {
 public:
  int xx;
  A a[2][3][2];
  X() {
    X_ctor_count++;

  }
  ~X() {
    X_dtor_count++;

  }
};
class Y {
 public:
  int xx;
  X a[2];

};
int main()
{
  {
  Y y;
  }
  if ( ( A_ctor_count == 24 && A_dtor_count == 24 )
    && ( X_ctor_count == 2 && X_dtor_count == 2 )){
    cout <<"ok\n";
  }else {
    cout <<"ng\n";
  }
}
