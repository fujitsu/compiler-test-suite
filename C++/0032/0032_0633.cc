













#include <stdio.h>

class A {
 public:
  int a,b;
  A& set(int, int);
  friend int cmp(int, int);
};

inline A& A::set(int i, int j)
{
  a = i;
  b = j;
  return *this;
}

int cmp(A& i, A& j)
{
  return ( i.a == j.a && i.b == j.b );
}
int main()
{
  A x,y;

  x.set(1,2);
  y.set(1,2);
  if( cmp(x,y) )
    printf("ok\n");
  else
    printf("ng\n");

}
