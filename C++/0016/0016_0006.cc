#include <stdio.h>

int i=0;
void f() {
  throw i;
}

struct B{
  int b_mem;
  B();
  B(int a) { b_mem = a; } 
};

struct A : public B {
  A(int i) try : B(i) {
    f();
  } catch (int j) {
    printf( "ok\n" );
  } catch (...) {
    printf ( "...\n" );
  }
};

int main()
{
  try {
    A aobj(10);
  }
  catch (int i) {
  }
}
