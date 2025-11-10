#include <iostream>
#include <cstddef>
#include <valarray>

template<class T> inline
bool func(std::valarray<T> const& lef,
	  std::valarray<T> const& rig){
  bool ret = true;
  
  for(std::size_t i=0; i<lef.size(); ++i){
    if(lef[i] != rig[i]){
      ret = false;
      break;
    }
  }
  
  return ret;
}

const std::size_t n = 5;

int main(void){
  std::valarray<int> ans(n);
  ans[0] = 33;
  ans[1] = 1;
  ans[2] = 33;
  ans[3] = 3;
  ans[4] = 4;
  
  std::valarray<int> v(n);
  for(int i=0; i<v.size(); ++i){
    v[i] = i;
  }

  
  std::slice_array<int> sa = v[ std::slice(0, 2, v.size()/2) ];
  std::slice_array<int> test = sa;

  
  test = std::valarray<int>(33, v.size());

  if( func(ans, v) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
