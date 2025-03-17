#include <stdio.h>
class B;







#if defined __GNUC__ || ((__cplusplus) && __cplusplus >= 201103L)
B func(int);
#endif

class A {
 public:
  friend B func(int);  
};
class B {
 public:
  friend B func(char); 
  friend B func(int);  
};
int main()
{
  func(0);
}


B func(int i){ B bo; printf("ok\n"); return bo;}
