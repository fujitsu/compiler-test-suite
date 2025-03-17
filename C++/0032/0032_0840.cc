#include <stdio.h>
template < class Ref>
struct R  {
    typedef R<Ref> self;
    int f(){ self b; b; return sizeof( b);}
};

class A {};
R<double> r;
R<short> z;

int main(){
 if ((r.f())==4 && ( z.f()) == 2){ printf("ok\n");
				 } else {
 printf("ok\n");
                                 }
}
