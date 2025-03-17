








class B {
 public:
  int b;
  class BB {
  public:
    int bb;
  };
};

#include <stdio.h>
int main()
{
#if !defined(__GSP__)
  (int B::BB::*)&B::b;   
  (int B::*)&B::BB::bb;  
#endif

  puts("ok");
}
