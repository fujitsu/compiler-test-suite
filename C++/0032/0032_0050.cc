#include <iostream>
using namespace std;

short s;
int r = 10;
class A {
 public:
 operator int&(){ return r; }
};

A ac;

int main(){
  int i;
  s = 1;
  s = s + ac;
  s = ac + s;  
  s += ac + ac;  
  if (s == 41)
    cout << "ok\n";
  else
    cout <<"ng\n";
}
