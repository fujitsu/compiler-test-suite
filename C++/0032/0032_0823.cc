#include <stdio.h>
class ozRef {
};
template <class T> class OZItr;
template <class T> class OZRef : public ozRef {
  OZItr<T> * x;
public:
};
template <class T>  class  OZItr  {
        OZRef<T>*       cur_obj;
public:
        void f()
        {
                delete cur_obj;
        }
};
int main()
{
        OZRef<int> p;
     printf("ok\n");
}


