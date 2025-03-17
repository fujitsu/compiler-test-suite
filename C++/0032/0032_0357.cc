#include <iostream>
using namespace std;

int a = 0;
int &r = a;
int &func_a()
{
  return a;
}

int &func_r()
{
  return r;
}
int main()
{
  
  r++;
  ++r;
  ((int&)a)++;
  ++((int&)a);
  (func_a())++;
  ++(func_r());

  if (r == 6 && a == 6)
    cout << "ok\n";
  else
    cout << "ng\n";
}
