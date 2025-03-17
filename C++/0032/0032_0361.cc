







#include <iostream>
using namespace std;
int main()
{
  int i = 1;
  int &r = i;
  int *p = &r;
  
  (*p) ++;
  r ++;
  i ++;
  if (&i == &r && &i == p && &r == p && 
      i == 4 && r == 4 && *p == 4)
    cout << "ok\n";
  else
    cout << "ng\n";
}
