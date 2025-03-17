#include <stdio.h>
struct Name {
}x;

typedef Name *NamePtr;
NamePtr xx=&x;

struct NameVar {
  operator NamePtr(){ printf("ok\n"); return xx;}
  NameVar(NamePtr){}
  NameVar(){}
};

void zzz(Name a){}
int main()
{
  NameVar name = xx;
  zzz(*name);
}
  
