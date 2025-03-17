#include <stdio.h>

int count = 0, dcount =0;
class Base {
 public:
  Base(){count ++;}
  virtual ~Base(){dcount++;}
  };

template< class T>
  class Derived : public Base {
  public:
    Derived();
    ~Derived();
};


template <class T>
  Derived<T>::Derived()
{
  count ++;
}
template <class T>
  Derived<T>::~Derived()
{
  dcount ++;
}

int main(){

{ Derived<int> dobj;}
 if ( count == 2 && dcount ==2 ){ printf("ok\n");}
 else { printf("ng\n");}
}
