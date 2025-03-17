#include <iostream>
using namespace std;

int &f();
int x;

int &f() {
  return x;
}

int main()
{
  f() = 100;
  cout << x << "\n";
  return 0;
}

