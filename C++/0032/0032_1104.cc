#include <stdio.h>

class B1 {
 public:
    int virtual B1vf2();
    };
class B2 {
 public:
    int  B2vf1();
    int mem;
    };
class D : public B1 , public B2 { } d;
int B1::B1vf2() { return 14; }
int B2::B2vf1() { if(mem==10) printf("ok\n");
                  else        printf("ng\n");
return 23; }

int (D::*pmf)();

int main() {
    pmf=&D::B2vf1;  
    d.mem = 10;
    (d.*pmf)();

    return 0;
    }
