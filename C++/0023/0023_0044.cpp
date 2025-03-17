#include <cassert>

struct A {
  int i;
};

int main() {
  {
    int a[2][2] = {{1, 2}, {3, 4}};

    assert(a[0][0] == 1);
    assert(a[0][1] == 2);
    assert(a[1][0] == 3);
    assert(a[1][1] == 4);
  }

  {
    char b[2][2] = {{'a', 'b'}, {'c', 'd'}};

    assert(b[0][0] == 'a');
    assert(b[0][1] == 'b');
    assert(b[1][0] == 'c');
    assert(b[1][1] == 'd');
  }

  {
    double d[2][2] = {{1, 2.0}, {3.0, 4.0}};

    assert(d[0][0] == 1);
    assert(d[0][1] == 2.0);
    assert(d[1][0] == 3.0);
    assert(d[1][1] == 4.0);
  }

  {
    A arr[2][2] = {{1, 2}, {{3}, {4}}};

    assert(arr[0][0].i == 1);
    assert(arr[0][1].i == 2);
    assert(arr[1][0].i == 3);
    assert(arr[1][1].i == 4);
  }
}
