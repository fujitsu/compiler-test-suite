extern "C" int printf(const char*, ...);
int ans;

class Class {

public:
  Class () {
    throw "char OK\n";
  }
  ~Class() {}
};

Class *func1() {
  return new Class[2];
}
int main() {
  try{
    func1();
  } catch(int a){
      if ( a == 1 ){
        printf("OK\n");
      }else{
        printf("NG\n");
      }
  } catch(float a){
    printf("float OK\n");
  } catch(const char *a){
    printf("%s", a);
  }
}
