#include <algorithm>
#include <vector>
#include <cstdio>

class foo {
private:
  virtual void sort() { printf("in class\n"); }
};

struct S {
  bool action();
};

bool S::action()
{
  bool NG = false;

  std::vector<int> data(5);

  int init[5] = { 1, 3, 2, 5, 4 };

  for (int i = 0; i < 5; i++) {
    data[i] = init[i];
  }

  sort(data.begin(), data.end());

  for (int i = 0; i < 5; i++) {
    printf("%d ", data[i]);
    if (data[i] != i + 1) {
      NG = true;
    }
  }
  printf("\n");

  return NG;
} 

int main()
{
  S obj;

  if (obj.action() == true) {
    printf("test NG\n");
  } else {
    printf("test OK\n");
  }

  return 0;
}
