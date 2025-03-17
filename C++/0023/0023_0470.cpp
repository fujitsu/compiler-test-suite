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
  X &&x = X(X(X()));
  int &&a = int(int(int()));
  assert(i == 1);
  assert(j == 0);
  assert(k == 0);
 }
 {
  X* &&e = new X[4];
  int* &&d = new int[4];
  assert(i == 5);
  assert(j == 0);
  assert(k == 0);
 }
}