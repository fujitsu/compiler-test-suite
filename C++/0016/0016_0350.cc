   class  A {
      public:
         int  ag;
    };
   class  B : virtual public A { 
      public:
         int  ag1;
    };
   class  C : virtual public A {
      public:
         int  ag1;
    };
   class  CLS: public B, public C {
      public:
         int  ag1;
    };

#include <stdio.h>
int main() {
     CLS  obj;

     obj. ag =10;
   
     puts("ok");
}

