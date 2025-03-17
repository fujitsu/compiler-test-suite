#include <cassert>
#include <typeinfo>

int main()
{
    int arr[3] = {1, 2, 3};
    if(const auto [i, c, d] = arr;d > 0)
     {
       assert(i == 1&&c == 2&&d == 3);
       assert(typeid(i) == typeid(const int)&&typeid(c) == typeid(const int)&&typeid(d) == typeid(const int));
     }
    else
     {
       return 0;
     }
}