#include <algorithm>
#include <vector>
#include <sstream>
#include <iostream>

template<typename X>
void f(std::vector<X>& vec)
{
  struct Less { 
    bool operator()(const X& a, const X&b) {
      return a.value < b.value;
    }
  };

  
  std::sort(vec.begin(), vec.end(), Less()); 
}

struct XX
{
  XX(int i):value(i){}
  int value;
};

template<typename T>
void foo(T const& t)
{
}

enum {noname};


int main()
{
  std::ostringstream os;

  std::vector<XX> v;
  v.push_back(XX(1));
  v.push_back(XX(5));
  v.push_back(XX(3));
  v.push_back(XX(2));
  v.push_back(XX(4));
  for (int i = 0; i < v.size(); ++i) {
    os << v[i].value;
  }
  std::cout << os.str() << std::endl;
  f(v);
  os.str("");
  for (int i = 0; i < v.size(); ++i) {
    os << v[i].value;
  }
  std::cout << os.str() << std::endl;

  
  foo(noname); 
}
