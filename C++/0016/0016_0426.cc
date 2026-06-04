#include <iostream>
using namespace std;

#include "037.h"
template <class T > void func(T i){
 i++;
 i--;
}
int main(){
 func(10);
 func(1.0);
 func2(1);
 func2(1.2);
 func3(1 ,1);
 func3(1,1.0);
}
