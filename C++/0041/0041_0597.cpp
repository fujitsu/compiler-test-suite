#include <iostream>
#include <vector>
#include <utility>

bool test1(void){
  bool ret = false;
  
  std::vector<int> src(3);
  src[0] = 0;
  src[1] = 1;
  src[2] = 2;
  
  auto dist = std::move(src);  
  
  if(dist[0] == 0 && dist[1] == 1 && dist[2] == 2){
    ret = true;
  }
  
  return ret;
}

bool test2(void){
  bool ret = false;

  std::vector<int> src(3);
  src[0] = 0;
  src[1] = 1;
  src[2] = 2;
  
  std::vector<int> dist(3);

  dist = std::move(src);

  if(dist[0] == 0 && dist[1] == 1 && dist[2] == 2){
    ret = true;
  }
  
  return ret;
}


int main(void){
  
  auto ret1 = test1();
  auto ret2 = test2();


  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
