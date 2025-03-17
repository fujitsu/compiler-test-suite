#include <stdio.h>

template < class T, int ii>
class S2 {
  public:
  T a;
  static int s;
};


template<> int  S2< int, (2>1) >::s =0;
static int s2(){

  S2< int, (2>1) >::s =5;
  if (S2< int, (2>1) >::s !=5) return 1;
return 0;
}

int main(){
  int flag=0;

  if (s2()) { printf("NG s2\n");flag=1;} else { printf("ok\n");}

}
