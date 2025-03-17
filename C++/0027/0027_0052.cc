#include <iostream>
#include <memory.h>

using namespace std;

int main(int argc, char** argv)
{
  int *array;
  int sum = 0;
  array = new int[10002];
  for (int i=0; i<10002; i++) {
    array[i] = 1;
  }
  for (int i=2;i<10002 ; i++) {
    sum = sum + array[i-2]; 
  }
  cout << sum << endl;
  if (sum == 10000) {
    cout << "OK" << endl;
  } else {
    cout << "NG" << endl;
  }
  return 0;
}
