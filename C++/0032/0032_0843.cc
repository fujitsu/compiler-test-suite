#include <stdio.h>
template <class T>
inline  int  operator!=(const T& x, const T& y) {
    return 1;
}


class iterator {};
class const_iterator {};

iterator s;
const_iterator ss;

   int g(){ return (s !=s);   }

   int ff(){  return (ss !=ss);  }

int main(){
  if ( g() ==1 && ff() == 1){ printf ("ok\n");} else {printf ("ok\n");}

}
