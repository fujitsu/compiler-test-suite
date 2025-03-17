













#include <stdio.h>

class A {
 private:
  int a;
 protected:
  int b;
 public:
  int c;
  void set(int i, int j){ a = i; b = j; }
  int  cmp(int i, int j){ return a == i && b == j ; }
}x;
int main()
{
  x.set(1,2);
  x.c = 3;

  if( x.cmp(1,2) == 1 && x.c == 3 )
    printf("ok\n");
  else
    printf("ng\n");

}
