#include <iostream>
class A {
    public:
    static int aasize_2() { return 1;}
};

static int aasize_1() { return 1;}

int main(int argc, char *argv[]) {
  double  x[1000];
  A a;

  
  # pragma omp parallel for schedule(dynamic, aasize_1())
  for(int i = 0; i < 10; i++)  {
    x[i] = 1.0;
    
  }

  # pragma omp parallel for schedule(dynamic, a.aasize_2())
  for(int i = 0; i < 10; i++)  {
    x[i] = 1.0;
    
  }

  std::cout << "OK" << std::endl;
  return 0;
}
