













#include <iostream>
#include <new>

using namespace std;

int main()
{
  int *ptr;

  try{
       ptr = new(nothrow) int;

       if(ptr == NULL) {
         cout << "failed" << endl;
       }
    }
    catch(bad_alloc){
        cerr << "bad_alloc failed" << endl;  
        return 0;
    }
  delete ptr;

  try{
       ptr = new(nothrow) int (10);

       if(ptr == NULL) {
         cout << "failed" << endl;
       }
    }
    catch(bad_alloc){
        cerr << "bad_alloc failed" << endl;  
        return 0;
    }
  cout << *ptr << endl;
  delete ptr;

  try{
       ptr = new(nothrow) int[10];

       if(ptr == NULL) {
         cout << "failed" << endl;
       }
    }
    catch(bad_alloc){
        cerr << "bad_alloc failed" << endl;  
        return 0;
    }
  delete [] ptr;

  cout << "OK" << endl;

  return 0;
}
