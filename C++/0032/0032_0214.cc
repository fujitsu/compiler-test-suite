
extern "C" void printf(char*,...);
class A {
 public:
  int a;
}aobj;
class X{
 public:
  class A {};
};
class D: public X::A  {
}obj;
class E: public A  {
 public:
 int a;
}obj2;

int main(){
D &rd=obj;
A &ra=aobj;
E &re=obj2;
A x;
  aobj.a = 10;
  obj2.A::a =100;
  int i=0;
   x= i ? ra : re;   
   x = (x.a == 100)? ra:re ;
  if (x.a == 10)
    printf("ok\n");
  else 
    printf("ng\n");
};
