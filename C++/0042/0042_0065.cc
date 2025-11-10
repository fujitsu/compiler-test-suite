


































#include <iostream>

int main()
{
#if defined(__cplusplus) && (__cplusplus == 201103L)
  
  
  int i3 = NULL; 
  using namespace std;
  
  cout << "ok" << endl;
#else
  cout << "C++ 2011 test" << endl;
#endif
}
