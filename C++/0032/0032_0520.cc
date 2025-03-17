
extern "C" void printf(char*,...);
class A {
 public:
 int i,j;
 A(){i=10;j=10;}
 A(int ii, int jj){i=ii;j=jj;}
  void f();
};
void A::f(){
  float y=2,z=1;
  A x((int)y, (int)z);   
 if (x.i==2 && x.j==1)
   printf("ok\n");
 else {
   printf("ng\n");
   printf("%d,%d\n",x.i,x.j);
 }
  
}
int main(){
 A obj;
 obj.f();

}
