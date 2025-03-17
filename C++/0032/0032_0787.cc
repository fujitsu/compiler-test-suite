extern "C" void printf(char*,...);
        class A {
        public:
                static int a;
	      };

        class B : virtual public A {}; 

        class D : public B, public A {};
int A::a=10;
        void g(D *pd)
{
                pd->a = 1;
	      }
int main(){
  D z;
  g(&z);
  if (z.a==1)
    printf("ok\n");
  else
    printf("ng\n");
}
