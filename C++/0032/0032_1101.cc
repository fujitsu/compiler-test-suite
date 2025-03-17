#include <stdio.h>
class B;







#if defined __GNUC__ || ((__cplusplus) && __cplusplus >= 201103L)
void func(int);
#endif

class A {
 public:
  friend void func(int);
};
class B {
 public:
  friend B func(char); 
  friend void func(int){  printf("ok\n"); };
};
int main()
{
  func(0);
}

