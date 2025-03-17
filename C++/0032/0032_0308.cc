
extern "C" void printf(char*,...);
int j=0;
struct X {
  int a;
  int aa;
};
class INTF_A {
 public:
 class X{char i;};
};

class INTF_A_impl: INTF_A{
 public:
  void at25();
  void at25(int);
}x;
void f(INTF_A::X&);
void INTF_A_impl::at25()
{
      typedef int X;
 
      {
          X obj;
         if (sizeof(obj)== 4)
           j++;
         else
           j=0;
      }	
 }
void INTF_A_impl::at25(int i) 
{
      {
         X obj;
         if (sizeof(obj)==1) 
           j++;
         else
           j=0;
       }
 }
int main(){
 x.at25();
 x.at25(1);
 if (j==2)
   printf("ok\n");
 else
   printf("ng %d\n",j);
}
