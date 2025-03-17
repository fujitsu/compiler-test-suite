#include <stdio.h>

int auto_flag;
int static_flag;

class A {
 public:
 int i;
 void ff() const;
 static void ff(const A*);
};
void A::ff() const {
 printf("auto\n");
 if (static_flag != 1 || auto_flag != 0)
   printf("ng 1 \n");
 auto_flag++;
}

void A::ff(const A *p){
 printf("static\n");
 if (auto_flag != 0 || static_flag != 0)
   printf("ng 2 \n");
 static_flag++;

 p->ff();   
}

const A *q = new A;
int main(){
 A::ff(q);
 
 if (auto_flag == 1 && static_flag == 1)
   printf("ovldok196.cc ok \n");
 else
   printf("ovldok196.cc ng \n");
}
