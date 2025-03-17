

extern "C" { void printf(char*,...);}

class A {
 public:
  struct tag {
    int a;
  };
 tag tagobj;
 tag *tp;
};
int main(){
 A aobj;
 A aobj2;
 int A::tag::*p=&A::tag::a;
 aobj2.tp = &aobj2.tagobj; 
 aobj.tagobj.*p=20;
 aobj2.tp->*p =10;
 if (aobj.tagobj.a ==20 && aobj2.tagobj.a==10)
   printf("ok\n");
 else
   printf("ng\n");
}
  
