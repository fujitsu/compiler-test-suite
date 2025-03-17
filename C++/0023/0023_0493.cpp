#include <cassert>

int i = 0;
int k = 0;
struct X
{
  X(){ i++;};
  X(X&&){ k++;};
  ~X(){};
};

int main()
{
  {
  const X &a = X(X(X()));
  assert(i == 1);
  assert(k == 0);
  }
  {
   const X(&a1)[10] = {};
   assert(i == 11);
   assert(k == 0);
  }
}