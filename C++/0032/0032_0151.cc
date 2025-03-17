
extern "C" void printf(char*,...);
         class A {
	 protected:
            class B {public:int ab; B(){ab=10;} };
	  private:
            class X{};
          };
          class C :  public A {
          };
          class D: public C{
	  public:
          A::B y;              
          int  f(){ 
             A::B x;  
             B yy;      
             return (y.ab == x.ab && x.ab==yy.ab);
	     }
          };

int main(){
  D obj;
  if (obj.f())
    printf("ok\n");
  else
    printf("ng\n");
  return 0;
}


