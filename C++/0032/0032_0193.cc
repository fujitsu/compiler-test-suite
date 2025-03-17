

extern "C" void printf(char*,...);
int x; 
class A {
 public:
  void func(){printf("ng\n");}
};
class B :virtual public A {
 public:
  void func(){x++;}
  int a;
};
class C : virtual public A,virtual public B{
 public:
  int c;
};
class CC: virtual public B,virtual public A{
};

class A8 {
  public :
  static int a;
};
class B8: virtual public A8{};
class C8: public A8{};
class D8: virtual public C8{};
class E8: virtual public A8{};
class F8: public B8,public C8,public D8{
}x8;
class G8: public C8,public D8,public B8{
}xx8;
class H8: public D8,public B8,public C8{
}xxx8;
int A8::a=80;
int f8(){
 return x8.a==80 && xx8.a==80 && xxx8.a==80;
}
int main(){
  C obj;
  CC ccobj;
  obj.func();
  ccobj.func();
  if (x==2 && f8())
    printf("ok\n");
  else 
    printf("ng\n");
}
