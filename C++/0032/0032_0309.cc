
extern "C" void printf(char*,...);
int  func(){
   struct A { int i; } a;
   struct B {
      struct A { 
              int f(A*p) {return sizeof(*p);  } 
              double x;
              A *p;
#if (defined(__linux__) || defined(LONG_DOUBLE_8)) && !(defined(__aarch64__) || defined(__x86_64__)) 
	      int dummy;
#endif
               }xx;
      int f(){
              return (xx.f(0)==16) && (sizeof (*(xx.p))== 16);
             }
   } b;
   return b.f(); 
 }

int main(){
 if (func())
    printf("ok\n");
 else
    printf("ng\n");
}
