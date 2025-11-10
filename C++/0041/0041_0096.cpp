#include <iostream>
#include <valarray>

int main(void){

#if defined (__GNUC__)
  std::valarray<int> a(10), b(10);

  std::slice_array<int> sa = a[ std::slice(0, 2, a.size()/2) ]; 
  std::slice_array<int> sb = b[ std::slice(1, 2, b.size()/2) ]; 

  sa = sb; 

  std::cout << "ok" << std::endl;
#else
  std::cout << "-Xg mode please" << std::endl;
#endif

  return 0;
}
