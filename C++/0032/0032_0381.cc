#include <iostream>
#include <stdexcept>

using namespace std;
static void f() { throw runtime_error("a runtime error"); }

int main()
{
   try
   {
      f();
   }
   catch (const exception& e)
   {
      cout << "Got an exception: " << e.what() << endl;
   }
   return 0;
}


