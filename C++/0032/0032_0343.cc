







#include <iostream>
using namespace std;

int func(const int &cir)
{
  if (cir == 1)
    return 1;
  else
    return 0;
}

int func(int &ir)
{
  if (ir == 2) {
    ir --;
    return 1;
  }
  else
    return 0;
}
int main()
{
  const int ci=1;
        int  i=2;

  if ( func(ci) == 1 && func(i) == 1 && i == 1)
    cout << "ok\n";
  else
    cout << "ng\n";
}
