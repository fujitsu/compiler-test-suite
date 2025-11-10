#include <cstdio>

struct X
{
  X()=default;
  X(int i) :m(i){puts("X(int) called.");}
  int m;
};


int main()
{
  X x1;   
  X x2(1);
}
