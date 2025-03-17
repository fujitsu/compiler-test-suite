








#include <iostream>
using namespace std;
int main()
{
  char i = 1;
  char &r = i;
  short s;

  if (sizeof (+r) == sizeof (int) &&
      sizeof (+(char&)i) == sizeof (int) &&
      sizeof (+s) == sizeof (int) &&
      sizeof (-r) == sizeof (int) &&
      sizeof (-(char&)i) == sizeof (int) &&
      sizeof (-s) == sizeof (int) &&
      sizeof (!r) == sizeof (int) &&
      sizeof (!(short&)s) == sizeof (int) &&
      sizeof (!s) == sizeof (int) &&
      sizeof (~r) == sizeof (int) &&
      sizeof (~(short&)s) == sizeof (int) &&
      sizeof (~s) == sizeof (int))
    cout << "ok\n";
  else
    cout << "ng\n";
}
