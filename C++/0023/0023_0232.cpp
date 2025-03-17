#include <cassert>

class T
{ 
    public:
        int mem; 
};

int main()
{   
    switch(T t{1};t.mem)
    {
      case 1:
         {
          assert(t.mem == 1);
         }
    } 
}

