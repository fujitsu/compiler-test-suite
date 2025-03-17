#include <iostream>
using namespace std;

class X
	{
public:
	int i;
	X(int ii) : i(ii) { }
	X mem();
private:
	X(const X &x) : i(x.i) { }
	}xx(0);

X X::mem()
{
  return X(1);
}
int main()
{
  X xobj(0);
  xobj = xx.mem();
  if (xobj.i == 1)
    cout << "ok\n";
  else
    cout << "ng\n";
}
