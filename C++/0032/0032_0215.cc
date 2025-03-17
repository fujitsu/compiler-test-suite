
extern "C" void printf(char*,...);
int chk=0;
class A {
public: int a; A(){ a=10; }
};
class X {
 public:
 class A{
     public :
        int yy; 
        int yy2;
   A(){yy=10;yy2=20;} 
 }; 
};
class B :public X::A {public: int b; B(){b=100;}};
class BB : public X::A, public A {public: int bb; BB(){bb=5;}};
int A::*ap=&A::a;
int B::*bp=&B::b;
int X::A::*xap = &X::A::yy;
int BB::*bbp = &BB::bb;
void f(){
  int i=0;
   B obj;
  int B::*pp = &B::b;
  pp=i?xap:bp;  
  if (obj.*pp==100)
    chk+=1;
  else
    chk+=0;

  i=1;
  pp=i?xap:bp;  
  if (obj.*pp==10)
    chk+=10;
  else
    chk+=0;
};

void ff(){
  int i = 0;
   B obj;
  int B::*pp = &B::b;

  pp=i?bp:xap;  
  if (obj.*pp==10)
    chk+=100;
  else
    chk+=0;

  i=1;
  pp=i?bp:xap;  
  if (obj.*pp==100)
    chk+=1000;
  else
    chk+=0;
}
void fff(){
  int i = 0;
   BB obj;
  int BB::*pp = &BB::bb;

  pp=i?bbp:ap;  
  if (obj.*pp==10)
    chk+=5;
  else
    chk+=0;
}

int main(){
  f();
  ff();  
  fff();
  if (chk == 1116)
    printf("ok\n");
  else
    printf("ng %d\n",chk);
}
