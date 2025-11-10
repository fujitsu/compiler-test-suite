



#include <iostream>
using namespace std;

template <class T > void func(T i){
 i++;
 i--;
}
void func2();
int main(){
 func(10);
 func(1.0);
 func2();
}

