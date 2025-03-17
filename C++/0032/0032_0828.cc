#include <stdio.h>
template <class T>
inline void deallocate(T* b) {
  printf("ok\n");
}

template <class T>
struct A {
    void deallocate(int* p) { ::deallocate(p); }
    typedef int dd;
};



class B {
public:
     typedef A<int>::dd dd;
};

int main(){
 A<int> aobj;
 int i;
 aobj.deallocate(&i);
}
