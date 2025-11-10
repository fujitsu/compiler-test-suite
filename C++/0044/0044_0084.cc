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
#pragma omp parallel
      {
	try {
	  sub(i + 100);
	} catch (int j) {
	  if (j != 110) {
	    cout << "NG " << j << "\n";
	  }
	}
      }
    }
  }
  cout << "pass\n";
}
