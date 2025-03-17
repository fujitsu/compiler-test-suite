






#include <stdio.h>

class B {
 public:
  int x;
  int a;
  char b;
  B(){ a = 1; b = 2; }
};

class D : public B {
 public:
  int c;
  char d;
  D(){ c = 3; d = 4; }
};
int main()
{
  B bobj;
  int B::*bmp;
  D dobj;
  int D::*dmp;

  bmp = (int B::*)&B::b;
  if((void*)&bobj.b == (void*)&(bobj.*bmp))
    ; 
  else
    printf("ng &bobj.b=%x &(bobj.*bmp)=%x \n", (void*)&bobj.b, (void*)&(bobj.*bmp));

  dmp = (int B::*)&B::a;
  if((void*)&dobj.a == (void*)&(dobj.*dmp))
    ; 
  else
    printf("ng &dobj.a=%x &(dobj.*dmp)=%x \n", (void*)&dobj.a, (void*)&(dobj.*dmp));

  dmp = (int B::*)&B::b;
  if((void*)&dobj.b == (void*)&(dobj.*dmp))
    ; 
  else
    printf("ng &dobj.b=%x &(dobj.*dmp)=%x \n", (void*)&dobj.b, (void*)&(dobj.*dmp));

  printf("ok\n");
}
    
