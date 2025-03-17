
extern "C" void printf(char*,...);
struct B{ int b; }; 
struct X{
  struct B {};
};
struct D : virtual X::B {};
struct E :  B {};
int E::*ep = &B::b;   


int main(){
  E obj;
  obj.b =100;
  if (obj.*ep == 100)
    printf("ok\n");
  else
    printf("ng\n");
}
