#include <iostream> 
using namespace std;

void vf() { cout << "ok" << endl; }
void func()
{
  return vf();
}
int main()
{
  func();
}
