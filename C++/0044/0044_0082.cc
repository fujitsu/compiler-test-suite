#include <iostream>
using namespace std;

void sub()
{
  throw 100;
}

int main()
{
#pragma omp parallel
  {
    try {
      try {
	sub();
      } catch (int i) {
	if (i != 100) {
	  cout << "NG(1) " << i << "\n";
	}
      }
    } catch (int j) {
      cout << "NG(2) " << j << "\n";
    }
  }
  cout << "pass\n";
}
