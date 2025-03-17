extern "C" int printf(const char*, ...);
#include <iostream>
using namespace std;

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

void process1();
void process2();
int main() {
  try{
    process1();
    try{
      try{
 func1();
      }catch(...){
 throw;
      }
    }catch(float a){
      printf("NG\n");
    }
  }
  catch(int a){
    if ( a == 1 ){
      printf("OK\n");
    }else{
      printf("NG\n");
    }
    process2();
  }
}

void process1()
{
  int i, x, k;

  cout << "process1 start" << endl;
  x = 0;
  k = 10;
  for (i = 0; i <= 100; i++){
    x = x + i;
    if ( i == k ){
      cout << "i =  " << k << ": x = " << x << endl;
      k = k + 10;
    }
  }
  cout << "process1 end" << endl;
}

void process2()
{
  int i, x, k;

  cout << "process2 start" << endl;
  x = 0;
  k = 100;
  for (i = 100; i >= 1; i--){
    x = x + i;
    if ( i == k ){
      cout << "i = " << k << ": x = " << x << endl;
      k = k - 10;
    }
  }
  cout << "i =  " << k + 1 << ": x = " << x << endl;
  cout << "process2 end" << endl;
}
