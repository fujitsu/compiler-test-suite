#include <iostream>

using namespace std;


template <typename ...Args> 
void foo(const Args&...){
  cout << sizeof...(Args) << endl; 
}
int main(){
  foo(1,"a",3.14);
}
