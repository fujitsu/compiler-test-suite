#include <iostream>
using namespace std;

  struct Empty1 {};
  struct Class: Empty1 {
    int i;
  };  

  struct Empty {};
  struct Nonempty1 { char c; };
  struct Nonempty2 { char c; };
  struct Optimized: Nonempty1, Nonempty2, Empty {};
int main()
{
#if !defined(__sun)
  if (4 == sizeof(Class) &&
      2 == sizeof(Optimized))
#else
  if (8 == sizeof(Class) &&
      3 == sizeof(Optimized))
#endif
    cout << "ok" << endl;
  else {
    cout << "ng" << endl;
    cout << sizeof(Class) << endl;
    cout << sizeof(Optimized) << endl;
  }
}
