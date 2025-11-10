


#include "000.h"
template <class T ,class T2> void func3(T x,T2 y){
 x++;
 x--;
 y=x++;
 func4(10);
 y++;
 func4(1.0);
}
void func3(){
 func3(1,2);
 func3(1,1.0);
}
