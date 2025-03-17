#include <stdio.h>
template<class T> class cplx {
 public:
   cplx(T x){}
};

template<class T> cplx<T>  operator+( cplx<T>& x , cplx<T>& y) {
         printf("ok\n");
         return  cplx<T>(3);
}


int main() {
    cplx<int> ci1(1);
    cplx<int> ci2(1);
    ci1 + ci2;

   return 0;
}
