
template<class T> class TA {
public:
  typedef T a;
};
#include <stdio.h>
int main() {
  TA<int> t1;
  TA<char> t2;
  puts("ok");
}
