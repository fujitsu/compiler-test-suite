#include <stdio.h>
template <class T>
inline  int  operator!=(const T& x, const T& y) {
    return 1;
}


class iterator {};
class const_iterator {};
class const_iterator2 {};

iterator s;
const_iterator ss;
const_iterator sss;

   int g(){ return (s !=s);   }

   int h(){ return (s !=s);   }

   int i(){ return (sss !=sss);   }

   int ff(){  return (ss !=ss);  }

int main(){
  if ( g() ==1 && ff() == 1 && h() == 1 && i() == 1)
    { printf ("ok\n");} 
  else {printf ("ng\n");}

}
