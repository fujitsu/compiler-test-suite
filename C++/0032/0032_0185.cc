
#include <iostream>
using namespace std;

class B
	{
public:
	int i;
	B(const B &b) : i(b.i) { i += b.i; }

	B(int ii) : i(ii) {  }
private:
	};

class D : public B
	{
public:
	D() : B(1) { ; } 
	D operator =(const D& dr) { return *this; }
	};
int main()
{
  D d, dd;

  dd.i ++;
  if (dd.i == 2 && d.i == 1)
    {
      d = dd;
      if (d.i == 1 && dd.i == 2)
	cout << "ok\n";
      else
	cout << "ng " << d.i << dd.i;
    }
  else
    cout << "ng\n";
}
