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
#pragma omp parallel
    {
      try {
	sub();
      } catch (int i) {
	if (i != 100) {
	  cout << "NG\n";
	}
      }
    }
  }
  cout << "pass\n";
}
