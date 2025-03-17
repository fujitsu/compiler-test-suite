


#include <stdio.h>

 class A {
    public:
       int   a;
       char  xx;
       int   b;
       double pp;
       int   mem;
       void  print() {
		printf("Member pointer test.\n");
	}
 };

class B {
    public:
	int f;
	double bb;
	int *gg;
	int hh;
};

 int  A::*mem1 = &A::a ;
 int * B::*mem3 = &B::gg ;

 int main()
 {
   A  obj, obj1;
   int  A:: *mem2 = &A::b;

   int a; int *p=(int *)10;

   obj.*mem1=10;
   obj1.*mem1=20;
   printf("result of A::*mem1 : (obj.*mem1)%d (obj1.*mem)%d\n",obj.a,obj1.a);
   mem1 = &A::mem;
   obj.*mem1 = 100;
   printf("result of A::*mem1 : (obj.*mem1)%d\n", obj.mem) ;

   obj.print();

   obj.*mem2=30;
   obj1.*mem2=40;
   printf("result of A::*mem2 : (obj.*mem2)%d (obj2.*mem)%d\n", obj.b, obj1.b);

   B obj2;

   obj2.*mem3=&a;
   *(obj2.*mem3)=400;
 }

