
extern "C" void printf(char*,...);

class INTF_A {
public:
  class t_LgSeqF {
  private:
    int i_;
  public:
    int &operator[](int i){ i_ = i; return i_;}
  };
};

void f(int i){
 if (i==3)
   printf("ok\n");
 else
   printf("ng %d\n", i);
}

int main(){
  INTF_A::t_LgSeqF t_LgSeqF;
  f(t_LgSeqF[3]); 
  return 0;
}
