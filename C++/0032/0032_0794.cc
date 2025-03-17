#include <stdio.h>
class A;
void f(A*);







#if defined __GNUC__ || ((__cplusplus) && __cplusplus >= 201103L)
void f();
void ff();
#endif

class A {
 private:
   int a;
 public:
   friend void f(A*p){p->a =1; }
   friend void f(){ }
   friend void ff(){ }
   friend void fff();
 };

int main(){ A aobj; f(&aobj); f(); ff(); printf("ok\n"); }
