class AA {
 public:
  int a;
};
class BB: virtual AA {
 public:
 int b;
};
struct CC :  BB, virtual AA{
  int c;
}cobj;
class DD: virtual CC, virtual protected BB{
}obj;
#include <stdio.h>
int main(){
cobj.a=0;
cobj.b=0;

 puts("ok"); 
}
