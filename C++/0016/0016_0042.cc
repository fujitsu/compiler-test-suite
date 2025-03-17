
class CA {};
template <class T> class TA {};
template <class T> class TB {
public:
  CA x1;
  CA CA::*x2;
  TA<int> y1;
  TA<int> CA::*y2;
};
TB<int> obj;
#include <stdio.h>
int main(){puts("ok");
}
