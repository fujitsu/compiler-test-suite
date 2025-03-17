#include <stdio.h>

class c { public:
	int d[10];
	public: c(c*q);
        c *p;
	public: c() {}
};
 c::c(c*q) {
	   p = q; 
	   if (p != 0 && this == p)
	     printf("ok 1/2\n");
	   else {
	     printf("c::c test %x\n", this);
	     printf("c::c test %x\n", p);
	   }
        }

class e :  public virtual  c {
  int x[20];
public:	e(int i);
};

e::e(int i) : c(this) {
  if (this->c::p != 0 && (void*)this != (void*)this->c::p)
    printf("ok 2/2\n");
  else {
    printf("e::e test %x\n", this);
    printf("e::e test %x\n", this->c::p);
  }
};

int main() {
	e *q = new e(10);
}
