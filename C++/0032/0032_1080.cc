#include <iostream>
using namespace std;

int x;
class A {
  public:
   int a;
   operator int() { x = 1; return 0;}
   operator int*() { if (x==1) cout << "ok\n";
		     else      cout << "ng\n";
		     return 0;
		   }
 };
int main()
{
  A aobj;

  ~aobj;
  *aobj;
}
