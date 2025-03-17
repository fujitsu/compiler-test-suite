#include <iostream>
using namespace std;

void swapargs(int &x, int &y);

int main() {
  int i, j;
  i = 10;
  j = 19;

  cout << "i:" << i << " j:" << j << "\n";
  swapargs(i, j);
  cout << "After swap\n";
  cout << "i:" << i << " j:" << j << "\n";

  return 0;
}

void swapargs(int &x, int &y) {
  int tmp;
  tmp = x;
  x = y;
  y = tmp;
}
