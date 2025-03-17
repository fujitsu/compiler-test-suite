#include <stdio.h>
void f(double d){ 
#if defined (__GNUC__)
  printf("now ristrict ok\n");
#else
  printf("double\n");
#endif
}

template <class T>
class A{
public:
  void g(){ f(1);}
};

void f(int i){ printf("now ristrict ok\n");}

int main(){

  A<int> aobj;
  aobj.g();
  return 0;
}
