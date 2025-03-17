#include <iostream>
using namespace std;

struct B {
  int b1;
  int b2;
  B() { b1 = b2 = 1; }
};

struct B2 {
  int b21;
  int b22;
  B2(){ b21 = b22 = 1; }
};;

struct D : public B, public B2 {
  int d1;
  int d2;
  D() { d1 = d2 = 1; }
};
int main()
{
  D dobj;
  D *dp = &dobj;

  ((B2&)dobj).b21 += 1;
  ((B2*&)dp)->b22 -= 1;  
                         
			 
			 

  if (dobj.b1 == 1 && dobj.b2 == 0 &&
      dobj.b21 == 2 && dobj.b22 == 1 &&
      dobj.d1 == 1 && dobj.d2 == 1)
    cout << "ok\n";
  else
    cout << "ng\n";

}
