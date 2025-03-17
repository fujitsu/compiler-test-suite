
#include <iostream>

int count = 0;
int (*func(int i))[]{ 
  count += i;
  return 0;
}
int (*func())[10]{
  count += 20;
  return 0;
}
int main(){
 int (*p)[];
 int (*pp)[10];

  p = func(10);
  pp = func();
  if (count == 30 )
    std::cout << "ok\n";
  else
    std::cout << "ngk\n";
}
