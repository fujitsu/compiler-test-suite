#include <iostream>
using namespace std;

void sub(int i)
{
  throw i;
}

int main()
{
#pragma omp parallel
  {
    try {
      sub(10);
    } catch (int i) {
      try {
	sub(i);
      } catch (int j) {
	if (j != 10) {
	  cout << "NG " << j << "\n";
	}
      }
    }
  }
  cout << "pass\n";
}
