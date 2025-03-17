#include <stdio.h>
template<class T> class A {
public:
   friend void ff1(A<int>&x,A<double>&y);
};

A<char> x;


int main(){
 printf("ok\n");
}
