




#include <iostream>
using namespace std;

int x;
void Fcn(const int*, short) { cout << "Fcn(const int*, short)\n"; }
void Fcn(int*, int) { x ++; }

int i;
short s = 0;
int main()
{
  Fcn(&i, 1L);    
  Fcn(&i, 'c');   
  if (x == 2)
    cout << "ok\n";
  else
    cout << "ng\n";
}
