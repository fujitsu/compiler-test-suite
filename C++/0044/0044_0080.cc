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
#pragma omp sections
    {
      try {
	sub(10);
      } catch (int i) {
	if (i != 10) {
	  cout << "NG (" << i << ") \n";
	}
      }
#pragma omp section
      try {
	sub(15);
      } catch (int i) {
	if (i != 15) {
	  cout << "NG (" << i << ") \n";
	}
      }
    }
  }
  cout << "OK" << "\n";
}
