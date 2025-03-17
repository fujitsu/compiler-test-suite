
extern "C" void printf(char*,...);
int flag = 0;
class B {
 public:
 ~B();
};
 B::~B(){
 flag =1;
}
int f(int i){
 if (i==0) return 10+10+i;
 B obja;
}
int main(){
 int x;
 x= f(0);
 if (x ==20 && flag==0)
  printf("ok\n");
else 
  printf(" NG \n");
}


