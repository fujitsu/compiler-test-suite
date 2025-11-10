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
  std::valarray<int> ans(n + n);
  ans[0] = 0;
  ans[1] = 2;
  ans[2] = 20;
  ans[3] = 30;
  ans[4] = 40;
  ans[5] = 50;
  ans[6] = 60;
  ans[7] = 70;
  ans[8] = 80;
  ans[9] = 90;

  std::valarray<int> a(n);
  std::valarray<int> b(n + n);

  for(std::size_t i=0; i<a.size(); ++i){
    a[i] = i;
  }

  for(std::size_t i=0; i<b.size(); ++i){
    b[i] = i * 10;
  }

 
  
  std::slice_array<int> sa = a[ std::slice(0, 2, a.size()/2) ];
  
  
  std::slice_array<int> sb = b[ std::slice(0, b.size(), 1) ];


  
  
  sb = sa;
  

  if( func(ans, b) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

