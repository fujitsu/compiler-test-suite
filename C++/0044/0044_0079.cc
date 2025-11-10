#include <iostream>
using namespace std;

void sub(int i)
{
  throw i;
}

int main()
{
  int cnt;
#pragma omp parallel
  {
#pragma omp for
      for (cnt=100;cnt>0;cnt--) {
	try {
	  sub(cnt);
	} catch (int i) {
	  if (i != cnt) {
	    cout << "NG (" << i << ") \n";
	  }
	}
      }
  }
  cout << "OK" << "\n";
}
