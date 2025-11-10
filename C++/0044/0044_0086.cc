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
#pragma omp parallel
    {
#pragma omp single
      {
	try {
	  sub(15);
	} catch (int i) {
	  if (i != 15) {
	    cout << "NG(" << i << "\n";
	  }
	}
      }
    }
  }
  cout << "pass\n";
}
