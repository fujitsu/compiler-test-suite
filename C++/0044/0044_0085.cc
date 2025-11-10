#include <iostream>
using namespace std;

void sub(int i)
{
  throw i;
}

int main()
{
  try {
#pragma omp parallel
    {
      try {
#pragma omp parallel
	{
	  try {
	    sub(100);
	  } catch (int i) {
	    if (i != 100) {
	      cout << "NG(1) " << i << "\n";
	    }
	  }
	}
      } catch (int j) {
	if (j != 100) {
	  cout << "NG(2) " << j << "\n";
	}
      }
    }
  } catch (int k) {
    if (k != 100) {
      cout << "NG(3) " << k << "\n";
    }
  }
  cout << "pass\n";
}
