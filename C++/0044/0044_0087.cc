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
      if (i != 10) {
	cout << "NG(1) i = " << i << "\n";
      } else {
#pragma omp single
	{
	  try {
	    sub(i+100);
	  } catch (int j) {
	    if (j != 110) {
	      cout << "NG(2) j = " << j << "\n";
	    }
	  }
	}
      }
    }
  }
  cout << "pass\n";
}
