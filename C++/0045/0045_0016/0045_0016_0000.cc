


#include <iostream>
using namespace std;

template <class T > void func2(T x){
 x++;
 x--;
 cout <<"ok\n";
}
void func3();
void func2(){
 func2(1);
 func2(1.2);
 func3();
}


