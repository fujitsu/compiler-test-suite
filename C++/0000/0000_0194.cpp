struct test {
  static void assign();
  static void clear();
  static void emplace();
  static void emplace_back();
  static void erase();
  static void insert();
  static void pop_back();
  static void push_back();
  static void reserve();
  static void resize();
  static void swap();

  int mem;
};

void test::assign() {}
void test::clear() {}
void test::emplace() {}
void test::emplace_back() {}
void test::erase() {}
void test::insert() {}
void test::pop_back() {}
void test::push_back() {}
void test::reserve() {}
void test::resize() {}
void test::swap() {}

#include <cstdio>

int main()
{
  test::assign();
  test::clear();
  test::emplace();
  test::emplace_back();
  test::erase();
  test::insert();
  test::pop_back();
  test::push_back();
  test::reserve();
  test::swap();

  printf("test end\n");  
  return 0;
}
