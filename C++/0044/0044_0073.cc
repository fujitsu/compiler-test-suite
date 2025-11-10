class test {
public:
  test();
  ~test();
};

#include <cstdio>

extern bool in_eh;

test::test()
{
  printf("called CTOR\n");
}

test::~test()
{
  if (in_eh == true) {
    printf("in_eh\n");
  }
  printf("called DTOR\n");
}

bool in_eh = false;

void eh()
{
  in_eh = true;

  throw 1;
}

void func()
{
  test local_obj[2];
}

void func_eh()
{
  test local_obj[2];

  eh();
}

int main()
{
  printf("EH destructor call test\n");

  try {
    printf("local obj without EH\n");
    func();
  } catch(int) {
    printf("catched EH\n");
  }

  try {
    printf("local obj with EH\n");
    func_eh();
  } catch(int) {
    printf("catched EH\n");
  }

  return 0;
}
