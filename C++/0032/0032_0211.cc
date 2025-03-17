
extern "C" void printf(char*,...);
int chk=0;
class A {
  public :
   int i;
};
class B {
 public:
  class A {
    public :
     int j;
  };
}; 
class X : public B::A, public A{
 public:
}x;
class Y:public X{
}y;
void  func1(){
 y.i=100;y.j=50;
 x=y;
 if (x.i==100 && x.j==50)
    chk+=1;
}


class AA {
  public :
   int i;
};
class BB {
 public:
  class AA {
    public :
     int j;
  };
}; 
class XX : virtual public BB::AA, virtual public AA{
 public:
}xx;
class YY:public XX{
}yy;
void  func2(){
 yy.i=100;yy.j=50;
 xx=yy;
 if (xx.i==100 && xx.j==50)
   chk+=10;

}

int main(){
  func1();
  func2();
  if (chk==11)
   printf("ok\n");
 else
   printf("NG %d\n",chk);

  return 0;
}
