#include <iostream>
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

int main(void){
  const std::size_t n = 5;
  std::valarray<int> ans(n);
  ans[0] = 0;
  ans[1] = 1;
  ans[2] = 2;
  ans[3] = 3;
  ans[4] = 4;

  std::valarray<int> a(n);

  for(std::size_t i=0; i<a.size(); ++i){
    a[i] = i;
  }

  
  std::slice_array<int> sa = a[ std::slice(0, 2, a.size()/2) ];
  
  
  
  sa = sa;

  if( func(ans, a) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

