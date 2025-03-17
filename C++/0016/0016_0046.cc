
template<class T> class TA {
  int x;
  static char y;
};
template <class T, int i> class TB{
  static int x;
};
TB<int,10> uu;
TA<short> tt;
#include <stdio.h>
int main(){puts("ok");
}
