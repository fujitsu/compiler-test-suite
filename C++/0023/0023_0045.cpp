#include <cassert>

struct A {
  int a;
};

int main() {
  {
    int a[] = {1, 2, 3};

    assert(a[0] == 1);
    assert(a[1] == 2);
    assert(a[2] == 3);
  }

  {
    char b[] = {'a', 'b', 'c'};

    assert(b[0] == 'a');
    assert(b[1] == 'b');
    assert(b[2] == 'c');
  }

  {
    double d[] = {1, 2, 3.0};

    assert(d[0] == 1);
    assert(d[1] == 2);
    assert(d[2] == 3.0);
  }

  {
    A arr[] = {1, 2, 3};
    assert(arr[0].a == 1);
    assert(arr[1].a == 2);
    assert(arr[2].a == 3);
  }
}
