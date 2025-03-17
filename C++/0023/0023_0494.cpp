#include <cassert>

int i = 0;
struct X
{
  int n = 3;
  X(){ i++;};
  X(const X&) = delete;
  X(X&&) = delete;
  ~X(){};
};

int main()
{
  {
   int K = X(X(X())).n;
   assert(K == 3);
   assert(i == 1);
  }
  {
    X* x = new X[2];
    int c = x->n;
    assert(i == 3);
   }
}