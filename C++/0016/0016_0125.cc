class X { int x; }xobj;
class A {
  private:
    typedef int T;
    class C;
  protected:
    class B{};
  public:
    A(){}
}aobj;
namespace N {
    typedef int T;
    char a;
    T c;
    T* d;
    int ***b;
    int ***&e=b;
    X **f;
    X **&g=f;
}
#include <stdio.h>
int main(){
  puts("ok");
}
