#include <cassert>

int i = 0;
int j = 0;
int m = 0;
struct X
{
  int n = 3;
  X(){ i++;};
  X(const X&){ j++;};
  X(X&&){ m++;};
  ~X(){};
};

int main()
{
  {
  int K = X(X(X())).n;
  assert(K == 3);
  assert(i == 1);
  assert(j == 0);
  assert(m == 0);
  }
  {
  X* t = new X[2];
  int E = t->n;
  assert(E == 3);
  assert(i == 3);
  assert(j == 0);
  assert(m == 0);
  }
}