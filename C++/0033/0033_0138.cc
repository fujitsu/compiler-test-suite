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
  int work=0;
#pragma omp parallel
  if ((r.f())==4 && ( z.f()) == 2);
  else work=1;

  if(work==1)
    printf("ok\n");
  else
    printf("ng\n");
}
