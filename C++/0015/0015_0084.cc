extern "C" int printf(const char*, ...);
int ans;

class Class {
float a;
public:
  Class () {
    a = 3.14;
    throw a;
  }
  ~Class() {a = 0;}
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
  } catch(char *a){
    printf("char OK\n");
  }
}
