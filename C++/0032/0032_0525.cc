
extern "C" void printf(char*,...);
struct A {
  int a;
};
int main(){
  A *p;int x=0;
  A obj;p=&obj;obj.a=10;
  x= x ? x : p->a;
  if (x == 10)
  printf("ok\n");
  else
  printf("ng\n");
}
