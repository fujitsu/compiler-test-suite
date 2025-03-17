
extern "C" void printf(char*,...);
class A1 {
 public:
class A2 {
 public:
class A3 {
 public:
class A4 {
 public:
class A5 {
 public:
class A6 {
 public:
class A7 {
 public:
class A8 {
 public:
class A9 {
 public:
class A10{
 public:
class A11 {
 public:
class A12 {
 public:
class A13 {
 public:
class A14 {
 public:
class A15 {
 public:
class A16 {
 public:
class A17 {
 public:
class A18 {
 public:
class A19 {
 public:
 int x;
 A19(){x=10; } 
}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;}a;
int f1(){
A1::A2::A3::A4::A5::A6::A7::A8::A9::A10::A11::A12::A13::A14::A15 
::A16::A17::A18::A19 y; 
  return y.x;
}



class B1 {
 public:
class B2 {
 public:
class B3 {
 public:
class B4 {
 public:
class B5 {
 public:
class B6 {
 public:
class B7 {
 public:
class B8 {
 public:
class B9 {
 public:
class B10{
 public:
class B11 {
 public:
class B12 {
 public:
class B13 {
 public:
class B14 {
 public:
class B15 {
 public:
class B16 {
 public:
class B17 {
 public:
class B18 {
 public:
class B19 {
 public:
class B20 {public:int x; 
B20(){x=20;}
}b;
}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;}b;
int  f2(){
B1::B2::B3::B4::B5::B6::B7::B8::B9::B10::B11::B12::B13::B14::B15 
::B16::B17::B18::B19::B20 y; 
 return y.x;
}


struct C1 {
struct C2 {
struct C3 {
struct C4 {
struct C5 {
struct C6 {
struct C7 {
struct C8 {
struct C9 {
struct C10{
struct C11 {
struct C12 {
struct C13 {
struct C14 {
struct C15 {
struct C16 {
struct C17 {
struct C18 {
struct C19 {
struct C20 {
struct C21 {
  int x;
  C21(){x=30;}
}c;
}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;}c;
int f3(){
C1::C2::C3::C4::C5::C6::C7::C8::C9::C10::C11::C12::C13::C14::C15 
::C16::C17::C18::C19::C20::C21 y;
return y.x; 
}


int main(){
 if (f1()==10 && f2()==20 && f3()==30)
  printf("ok\n");
 else
  printf("ng\n");
}
