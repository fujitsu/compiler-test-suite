#include <stdio.h>

int non_static_call;
int static_call;

class A {
public:
   void f() const { non_static_call++; }
  static void f(const A*){ static_call++; }
  void ff(){
    
    f(); 
    if (non_static_call == 1 && static_call == 0)
      return;
    printf("ng \n");
    }
 }x;
static void g(const A* p){
  
  A::f(p); 
  if (non_static_call == 1 && static_call == 1)
    return;
  printf("ng \n");
}
int main()
{
  A aobj;
  
  aobj.ff();
  g(&aobj);

  if (non_static_call == 1 && static_call == 1)
    printf("ok\n");
  else
    printf("ng \n");

}
