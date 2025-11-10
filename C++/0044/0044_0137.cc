#include <cstdio>

class exception {
protected:
  exception() { }

private:
  char const * throw_function_;
};

class
test_exception: public exception {
};

void
test_throw()
{
  throw test_exception();
}

int main()
{
  printf("throw derived class test\n");
  try {
    test_throw();
  }
  catch (test_exception) {
    printf("test_exception\n");
  }
  catch (...) {
    printf("NG\n");
  }
  return 0;
}
