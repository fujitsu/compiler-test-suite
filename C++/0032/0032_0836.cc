#include <stdio.h>
extern int a;
void g(char c){
#if defined (__GNUC__)
  printf("ok\n");
#else
  printf("char\n");
#endif
}

template< class T >
class BOO {
public:
 void f(int x) {
    int y = 0;
    { a = x; g(1);}
  }

};
void g(int i){printf("ok\n");}
int a;

BOO<int> j;

int main(){
  j.f(1);
  return 0;
}
