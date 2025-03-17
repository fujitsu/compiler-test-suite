extern "C" void printf(char*,...);

class X {
 public:
 virtual void ref();
 int xx;
};
class B :virtual public X{
 public:
 void bb();
};
void X::ref(){

 this->xx=100; 
 printf("ok\n");
}
void  B::bb(){
  ref();
}

B obj;
int main(){
 obj.bb();
 }
