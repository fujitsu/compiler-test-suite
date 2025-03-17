extern "C" int printf(const char*, ...);
int ans;

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
    a = 3.14;
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
int main() {
  try{
    func1();
  } catch(int a){
      if ( a == 1 ){
        printf("func1 int %d\n", a);
      }else{
        printf("NG\n");
      }
  } catch(float a){
    printf("func1 float %f\n", a);
  }
  try{
    func2();
  } catch(float b){
    printf("func2 float %f\n", b);
  } catch(char *c){
    printf("func2 char  %s\n", c);
  }
}
