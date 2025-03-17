extern "C" void printf(char*,...);
class A {
  int a;
}obj;
void func1(){
  int i;
  i=0;
  i++;
  printf(" NON EH object OK \n");
}
int main(){
  func1();
}
