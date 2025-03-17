#include <stdio.h>
template <class T>
class  deque  {
public:
    class iterator { };
    iterator start;
    ~ deque ();
};

template <class T>
 deque <T>::~ deque () {printf("ok\n"); }


int main(){
  {deque<double> dd;
  }


}
