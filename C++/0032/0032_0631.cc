













#include <stdlib.h>
#include <stdio.h>

class A {
 public:
  void *operator new(size_t i, char *j)
    {
       printf("%s\n",j);
       return malloc(i);
     }
  void operator delete(void *p){ free(p); }
};
int main()
{
  A *p = new ("ok") A;
  delete p;
}
