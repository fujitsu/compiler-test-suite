

template<class T> class TA {};
template<class T, class T1> class TB {};
template<class T, int i> class TC {};
template <class T> class TT {
  void f1(TA<int>);
  void f2(TB<char, char*>);
  void f3(TC<long, 1>);
};
TT<short> tt;
#include <stdio.h>
int main(){puts("ok");
}








