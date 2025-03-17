#include <stdio.h>

template < class TT>
class N1 {
  public:
  static int nn;
};

template < class T>
class S1:public N1<int>{
  public:
  T a;
  static int s;
};

template<> int S1<N1<int> >::s =5;

template<> int  S1< N1<int> >::N1<int>::nn =0;

static int s1(){

 S1< N1<int> >::N1<int>::nn =6;

  if ( S1<N1<int> >::s != 5 ) return 1;
  if ( S1<N1<int> >::N1<int>::nn != 6 ) return 1;

return 0;
}


int main(){
  int flag=0;

  if (s1()) { printf("NG s1\n");flag=1;} else { printf("ok\n");}

}
