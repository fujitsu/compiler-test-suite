#include <cstdio>
#include <vector>

using MyVector = std::vector<int>;

void sub1()
{
  
  MyVector myVec = { 1, 2, 3, 4, 5 };

  
  for (auto e: myVec) {
    std::printf("%d ", e);
  }
  std::puts("");
}
