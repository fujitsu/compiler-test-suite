extern "C" int printf(const char*, ...);
int ans;

class Class {
int a,b;
public:
  Class () {
    a = 1;
    b = 2;
    throw a * b / 2;
  }
  ~Class() {a = 0; b = 0;}
};

Class *func1() {
  return new Class[2];
}
int main() {
  try{
    func1();
    try{
    }catch(float){
    }catch(int a){
      throw;
    }
  }catch(int a){
    if ( a == 1 ){
      printf("OK\n");
    }else{
      printf("NG\n");
    }
  }
}
