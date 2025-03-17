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

int main()
{
  {
  const X &a = X();
  assert(i == 1);
  assert(j == 0);
  assert(k == 0);
  }
  {
  const X (&a1)[5] = {};
  assert(i == 6);
  assert(j == 0);
  assert(k == 0);
  }
}