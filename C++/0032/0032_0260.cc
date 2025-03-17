#include <iostream>
using namespace std;

#include <stdlib.h>
class A {
public:
  int b;
  int c;
  char a;
  int xx;
  A() { a=1; }
};
char         A::*mem_p     = &A::a;

int i=10;
int &r=i;
int main(){
  A aobj_l;

  if(aobj_l.*mem_p) {
    aobj_l.a = 0;

    while(aobj_l.*mem_p) {
      cout << "ng while\n";
    }

    aobj_l.*mem_p = 1;
    do{ 
        if (aobj_l.*mem_p==1)
	  aobj_l.*mem_p = 0;
        else {
	  cout << "ng do\n";
	  exit(1);
	}
      }while(aobj_l.*mem_p);

    aobj_l.*mem_p = 2;
    for(aobj_l.*mem_p;aobj_l.*mem_p;aobj_l.*mem_p) {
      if (aobj_l.*mem_p==2)
	aobj_l.*mem_p = 0;
      else {
	 cout << "ng for\n";
	 exit(1);
       }
    }
  }
  else
    cout << "ng if\n";
  
  if (r)
    cout << "ok\n";
  else
    cout << "ng\n";
}

