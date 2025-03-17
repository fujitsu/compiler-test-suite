#include <iostream>
#include <string>
#include <cstring>
using namespace std;

class test_class {
public:
  char data[256];

  test_class(const char *string)
  {
    strcpy(data, string);
  }

  bool operator==(const char *string)
  {
    if (strcmp(data, string) == 0) {
      return true;
    } else {
      return false;
    } 
  }

  
  operator char*() { return data; }
};

int main()
{
  test_class string("test");

  if (string == "test") {
    cout << "OK" << endl;
  } 
  return 0;
} 
