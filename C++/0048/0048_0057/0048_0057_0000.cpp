#include "000.hpp"

extern template class B1<int>;

int main()
{
  B1<int> b1(10);
  b1.show();
  return 0;
}
