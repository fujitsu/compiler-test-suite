extern "C" void printf(char*,...);
class D *p;
 class A {public: int a;  };
 class B {public: int b;  B(){}};
 class C {public: int c; C(){}
       operator D();       };
 class D : public A ,public B ,public C{public: int d;   
 }x;
 C::operator D(){ c=10; return *this; }
 int main(){
  C cobj;
    cobj.c=100;
  B bobj;
    bobj.b=100;
  D obj;
  obj.a=obj.b=obj.c=obj.d=10;
  obj.c = 1;
  obj.b+=5;
  cobj = (C)obj;   
  bobj = (B)obj;
  if (cobj.c == 1 && bobj.b == 15)
   printf("ok\n");
  else
   printf("ng\n");
  return 0;
 }

