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
  return new X[5];
}

int main()
{
  {
   X x = f();
   assert(i == 1);
   assert(j == 0);
   assert(k == 0);
  }
  {
   X* m = g();
   assert(i == 6);
   assert(j == 0);
   assert(k == 0);
  }
}