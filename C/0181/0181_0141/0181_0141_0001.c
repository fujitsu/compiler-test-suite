

enum __codecvt_result {Zero, One, Two};

int foo(void){
  enum __codecvt_result num;
  num = One;
  return num;
}
