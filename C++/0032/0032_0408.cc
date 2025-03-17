#include <iostream>
using namespace std;

class test_class {
public:
  void test_pretty_function() { cout << "__PRETTY_FUNCTION__ = " << __PRETTY_FUNCTION__ << endl; }
  void test_function() { cout << "__FUNCTION__ = " << __FUNCTION__ << endl; }
};

int main()
{
  cout << "__PRETTY_FUNCTION__ = " << __PRETTY_FUNCTION__ << endl;
  cout << "__FUNCTION__ = " << __FUNCTION__ << endl;

  test_class obj;
  obj.test_pretty_function();
  obj.test_function();

  return 0;
}

