#include <iostream>

using namespace std;


template <typename T>
void foo(T a) {
  cout << "last foo()" << endl;
  cout << a << endl;
}

template <typename T, typename ...Args> 
void foo(T a, const Args&... args){
  cout << a << " " << sizeof...(Args) << endl;
  foo(args ...);
  return;
}

int main(){
  foo(1,"a",3.14);
}
