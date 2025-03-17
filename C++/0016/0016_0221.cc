
extern "C" void printf(char*,...);
    class AT {
    public:
      int a; 
      void func();
      void func2();
    };
      inline void AT::func(){printf("x1\n");}
      inline void AT::func2(){printf("x2\n");}
    AT x1;
int main(){
     x1.func();
     x1.func2();
    }
