#include <cassert>

struct A {
  int a;
};

int main() {
  {
    int a[3] = {1, 2};

    assert(a[0] == 1);
    assert(a[1] == 2);
    assert(a[2] == 0);
  }

  {
    char b[3] = {'a'};

    assert(b[0] == 'a');
    assert(b[1] == 0);
    assert(b[2] == 0);
  }

  {
    double d[3] = {1, 3.0};

    assert(d[0] == 1);
    assert(d[1] == 3.0);
    assert(d[2] == 0);
  }

  {
    A arr[3] = {2, 3};

    assert(arr[0].a == 2);
    assert(arr[1].a == 3);
    assert(arr[2].a == 0);
  }
}
