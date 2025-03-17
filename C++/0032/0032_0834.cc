#include <stdio.h>
template< class T >
class BOO {
public:
 void f(int x) {
    int y = 0;
    { y = x;}
  }

};


BOO<int> j;

int main(){
  printf("ok\n");
}
