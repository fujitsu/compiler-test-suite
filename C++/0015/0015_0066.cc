extern "C" int printf(const char*, ...);

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
float a;
public:
  Class_B () {
    throw a = 3.14;
  }
  ~Class_B () {a = 0;}
};

Class_A *func1() {
  return new Class_A[2];
}

Class_B *func2() {
  return new Class_B[2];
}
int main() {
  try{
    func1();
    try{
      func2();
    }catch(float a){
      printf("child catch %f\n", a);
    }
  }catch(int b){
    if ( b == 1 ){
      printf("parent catch %d\n", b);
    }else{
      printf("NG\n");
    }
  }
}
