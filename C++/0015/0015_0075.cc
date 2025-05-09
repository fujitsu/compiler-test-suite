extern "C" int printf(const char*, ...);

class Class_A {
int a,b;
long c;
public:
  Class_A () {
    a = 1;
    b = 2;
    c = a * b / 2;
    throw c;
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

class Class_C {
char *a;
public:
  Class_C () {
    throw a = "NEXT";
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
int main() {
  try{
    try{
      func3();
    }catch(const char *c){
      printf("child catch %s\n", c);
    }
    func1();
  }catch(int b){
    if ( b == 1 ){
      printf("parent catch %d\n", b);
      func4();
    }else{
      printf("NG\n");
    }
  }catch(long d){
    printf("parent catch long %d\n", d);
  }
}

void func4(){
  try{
    func2();
  }catch(float a){
    printf("child catch %f\n", a);
  }
}
