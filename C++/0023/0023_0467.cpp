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

X g()
{
  return X();
}

void f(X x){};

X* m()
{
  return new X[2];
}

void n(X* x){};

int main()
{
  {
   f(g());
   assert(i == 1);
   assert(j == 0);
   assert(k == 0);
   }
   {
   n(m());
   assert(i == 3);
   assert(j == 0);
   assert(k == 0);
  }

}