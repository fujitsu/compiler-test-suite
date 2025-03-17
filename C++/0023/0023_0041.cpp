#include <cassert>

struct A {
  int i;
};

int main() {
  {
    int aa[][2] = {{1, 2}, {3, 4}, {5, 6}};
    int aa1[][2] = {{1, 2}, {3, 4}};
    int aa2[][2] = {{1, 2}};
    int aa3[][2] = {{1, 2}, {3}, {5, 6}};
    int aa4[][2] = {{1, 2}, {}, {5, 6}};

    assert(aa[0][0] == 1);
    assert(aa[0][1] == 2);
    assert(aa[1][0] == 3);
    assert(aa[1][1] == 4);
    assert(aa[2][0] == 5);
    assert(aa[2][1] == 6);

    assert(aa1[0][0] == 1);
    assert(aa1[0][1] == 2);
    assert(aa1[1][0] == 3);
    assert(aa1[1][1] == 4);

    assert(aa2[0][0] == 1);
    assert(aa2[0][1] == 2);

    assert(aa3[0][0] == 1);
    assert(aa3[0][1] == 2);
    assert(aa3[1][0] == 3);
    assert(aa3[1][1] == 0);
    assert(aa3[2][0] == 5);
    assert(aa3[2][1] == 6);

    assert(aa4[0][0] == 1);
    assert(aa4[0][1] == 2);
    assert(aa4[1][0] == 0);
    assert(aa4[1][1] == 0);
    assert(aa4[2][0] == 5);
    assert(aa4[2][1] == 6);
  }

  {
    char bb[][2] = {{'a', 'b'}, {'c', 'd'}, {'e', 'f'}};
    char bb1[][2] = {{'a', 'b'}, {'e', 'f'}};
    char bb2[][2] = {{'a', 'b'}};
    char bb3[][2] = {{'a', 'b'}, {'d'}, {'e', 'f'}};
    char bb4[][2] = {{'a', 'b'}, {}, {'e', 'f'}};

    assert(bb[0][0] == 'a');
    assert(bb[0][1] == 'b');
    assert(bb[1][0] == 'c');
    assert(bb[1][1] == 'd');
    assert(bb[2][0] == 'e');
    assert(bb[2][1] == 'f');

    assert(bb1[0][0] == 'a');
    assert(bb1[0][1] == 'b');
    assert(bb1[1][0] == 'e');
    assert(bb1[1][1] == 'f');

    assert(bb2[0][0] == 'a');
    assert(bb2[0][1] == 'b');

    assert(bb3[0][0] == 'a');
    assert(bb3[0][1] == 'b');
    assert(bb3[1][0] == 'd');
    assert(bb3[1][1] == 0);
    assert(bb3[2][0] == 'e');
    assert(bb3[2][1] == 'f');

    assert(bb4[0][0] == 'a');
    assert(bb4[0][1] == 'b');
    assert(bb4[1][0] == 0);
    assert(bb4[1][1] == 0);
    assert(bb4[2][0] == 'e');
    assert(bb4[2][1] == 'f');
  }

  {
    double dd[][2] = {{1.0, 2.0}, {3.0, 4.0}, {5.0, 6.0}};
    double dd1[][2] = {{1.0, 2.0}, {3.0, 4}};
    double dd2[][2] = {{1.0, 2.0}};
    double dd3[][2] = {{1.0, 2.0}, {3.0}, {5.0, 6.0}};
    double dd4[][2] = {{1.0, 2.0}, {}, {5.0, 6.0}};

    assert(dd[0][0] == 1);
    assert(dd[0][1] == 2);
    assert(dd[1][0] == 3);
    assert(dd[1][1] == 4);
    assert(dd[2][0] == 5);
    assert(dd[2][1] == 6);

    assert(dd1[0][0] == 1);
    assert(dd1[0][1] == 2);
    assert(dd1[1][0] == 3);
    assert(dd1[1][1] == 4);

    assert(dd2[0][0] == 1);
    assert(dd2[0][1] == 2);

    assert(dd3[0][0] == 1);
    assert(dd3[0][1] == 2);
    assert(dd3[1][0] == 3);
    assert(dd3[1][1] == 0);
    assert(dd3[2][0] == 5);
    assert(dd3[2][1] == 6);

    assert(dd4[0][0] == 1);
    assert(dd4[0][1] == 2);
    assert(dd4[1][0] == 0);
    assert(dd4[1][1] == 0);
    assert(dd4[2][0] == 5);
    assert(dd4[2][1] == 6);
  }

  {
    A arr[][2] = {{1, 2}, {{3}, {4}}, {5, 6}};
    A arr1[][2] = {{1, 2}, {{3}, {4}}};
    A arr2[][2] = {{1, 2}};
    A arr3[][2] = {{1, 2}, {{3}}, {5, 6}};
    A arr4[][2] = {{1, 2}, {}, {5, 6}};

    assert(arr[0][0].i == 1);
    assert(arr[0][1].i == 2);
    assert(arr[1][0].i == 3);
    assert(arr[1][1].i == 4);
    assert(arr[2][0].i == 5);
    assert(arr[2][1].i == 6);

    assert(arr1[0][0].i == 1);
    assert(arr1[0][1].i == 2);
    assert(arr1[1][0].i == 3);
    assert(arr1[1][1].i == 4);

    assert(arr2[0][0].i == 1);
    assert(arr2[0][1].i == 2);

    assert(arr3[0][0].i == 1);
    assert(arr3[0][1].i == 2);
    assert(arr3[1][0].i == 3);
    assert(arr3[1][1].i == 0);
    assert(arr3[2][0].i == 5);
    assert(arr3[2][1].i == 6);

    assert(arr4[0][0].i == 1);
    assert(arr4[0][1].i == 2);
    assert(arr4[1][0].i == 0);
    assert(arr4[1][1].i == 0);
    assert(arr4[2][0].i == 5);
    assert(arr4[2][1].i == 6);
  }
}
