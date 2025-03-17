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
int a;
public:
  Class_B () {
    throw a = 3;
  }
  ~Class_B () {a = 0;}
};

class Class_C {
char *a;
public:
  Class_C () {
    throw a = "OK";
  }
  ~Class_C () {a = "";}
};

Class_A *func1() {
  return new Class_A[2];
}

Class_B *func2() {
  return new Class_B[2];
}

Class_C *func3() {
  return new Class_C[2];
}

void func4();

void func5();
int main() {
  try{
    try{
      func4();
    }catch(const char *c){
      printf("child catch %s\n", c);
    }
    func1();
  }catch(int b){
    if ( b == 1 ){
      printf("OK\n");
    }else{
      printf("OK\n");
    }
  }
}

void func4(){
  func5();
}

void func5(){
  try{
    func3();
  }catch(float a){
    printf("child catch %f\n", a);
  }
}
