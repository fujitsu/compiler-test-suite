#include <stdio.h>
struct A{
   typedef int p;
};

class  B  {
public:
    typedef  A R;
    typedef R::p p;  
};

int main(){
 B bobj;
 B::p aa;
 printf("ok\n");
}
