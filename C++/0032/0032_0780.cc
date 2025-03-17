#include <stdio.h>

class C { public: int x ;};

template <class T> class D : public T {
   T *b;
};

D<C> dobj;

int main(){
printf("ok\n");
}
