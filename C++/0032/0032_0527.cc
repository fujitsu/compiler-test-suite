

extern "C" void printf(char*,...);
class A {
 public:
  int a;
};
class B :virtual public A {
 public:
  int b;
};
int main(){
 B *p=0;
 B obj;
 A *q,*qq,*r;
 q = p; 
 qq = q; 
 r = &obj;
  if (qq == 0 && q==0 && r !=0)
   printf("ok\n");
  else
   printf("ng\n");
}
