extern "C" int printf(const char*, ...);
int ret = 0;

class Class_A {
int a,b;
public:
  Class_A () {
    a = 1;
    b = 2;
    throw a * b / 2;
  }
  ~Class_A() {a = 0; b = 0;}
};

class Class_B {
int a;
public:
  Class_B () {
    a = 3;
    throw a;
  }
  ~Class_B() {a = 0;}
};

Class_A *func1() {
  return new Class_A[2];
}

Class_B *func2() {
  return new Class_B[2];
}

void func3();
int main() {
  func3();
}

void func3(){
  try{
    if ( ret == 0 ){
      ret = ret + 1;
      func3();
    }
  }catch(int c){
    printf("parent_02 catch %d\n", c);
  }
  if ( ret == 1 ){
    ret = ret + 1;
    func3();
  }
  if (ret == 2){
    ret = ret + 1;
    printf("OK\n");
  }
}
