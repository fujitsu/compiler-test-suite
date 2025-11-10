#include <iostream>
using namespace std;

void sub2()
{
  throw 10;
}

void sub1()
{
#pragma omp parallel
  {
    try {
      sub2();
    } catch (int i) {
      if (i != 10) {
	cout << "NG (" << i << ") \n";
      }
    }
  }
}

int main()
{
#pragma omp parallel
  {
    sub1();
  }

  cout << "pass\n";
}
