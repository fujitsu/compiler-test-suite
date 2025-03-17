#include <cassert>

int i = 0;
int j = 0;
int k = 0;
struct X
{
  X(){ i++;};
  X(const X&){ j++;};
  X(X&&){ k++;};
  ~X(){};
};

X f()
{
  return X();
}

X* g()
{
  return new X[4];
}

int main()
{
  {
  X* x =new X(f());
  assert(i == 1);
  assert(j == 0);
  assert(k == 0);
  }
  {
  X* w = g();
  assert(i == 5);
  assert(j == 0);
  assert(k == 0);
  }
}