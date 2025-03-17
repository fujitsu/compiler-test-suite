#include <cassert>

int i = 0;
int j = 0;
struct X
{
  X(){ i++;};
  X(const X&){ j++;};
  ~X(){};
};

int main()
{
  {
  const X &a = X(X());
  assert(i == 1);
  assert(j == 0);
  }
  {
   const X (&a1)[3] = {};
   assert(i == 4);
   assert(j == 0);
  }
}