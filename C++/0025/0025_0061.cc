#include <algorithm>
#include <vector>
#include <iostream>

static int zero = 0;

struct TEST_DATA{
  int data[2];
  inline int get_first() const {
    return data[zero];
  }
};

class foo {
public:
  foo(int x_num) {num=x_num;}
  bool operator()(TEST_DATA val) const {return val.get_first()==num;}
private:
  int num;
};

int main() {
  std::vector<TEST_DATA> vec;
  int n = 12;
  
  for(int i=0;i<n;i++){
    TEST_DATA pri_data;
    pri_data.data[0] = i/4;
    pri_data.data[1] = i;
    vec.push_back(pri_data);
  }
  
  int nrm = 1;
  
  std::vector<TEST_DATA>::iterator endit = std::remove_if(vec.begin(),vec.end(),foo(nrm));
  vec.erase(endit,vec.end());
  
  if (vec[4].data[0] == 2 && vec[4].data[1] == 8) {
    std::cout << "OK";
  } else {
    std::cout << "NG";
  }
  std::cout << std::endl;
}
