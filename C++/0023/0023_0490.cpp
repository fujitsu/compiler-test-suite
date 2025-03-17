#include <cassert>

int i = 0;
int j = 0;
struct X
{
  X(){ i++;};
  X(X&&){ j++;};
  ~X(){}; 
};

X g()
{
  return X();
}

void f(X x){};

X* n()
{
  return new X[2];
}

void m(X* x){};

int main()
{
  {
  f(g());
  assert(i == 1);
  assert(j == 0);
  }
  {
  m(n());
  assert(i == 3);
  assert(j == 0);
  }
}