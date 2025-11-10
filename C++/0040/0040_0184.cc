#include <stdio.h>
void f(double d){ printf("double\n");}
template <class T>
class A{
public:
  void g(){ f(1);}   
};

void f(int i){ printf("now ristrict ok\n");}


int main(){

  A<int> aobj;
  aobj.g();

}
