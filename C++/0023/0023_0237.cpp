#include <cassert>
#include <cstddef>

int main() {
  int a[] = {1, 2, 3, 4, 5};
  {
    auto begin = 0;
    auto end = 4;
    int sum = 0;
    for (; begin != end; begin++) {
      sum += a[begin];
    }
    assert(sum == 10);
  }
  {
    int sum = 0;
    for (auto begin = 0, end = 4; begin != end; begin++) {
      sum += a[begin];
    }
    assert(sum == 10);
  }
  {
    size_t begin = 0;
    size_t end = 4;
    int sum = 0;
    for (; begin != end; begin++) {
      sum += a[begin];
    }
    assert(sum == 10);
  }
  {
    int sum = 0;
    for (size_t begin = 0, end = 4; begin != end; begin++) {
      sum += a[begin];
    }
    assert(sum == 10);
  }
}
