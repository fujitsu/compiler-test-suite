#include <cassert>

int main()
{   
    int i = 1;
    switch(int &p = i;p)
    {
      case 1:
         {
          assert(p == 1);
         }
    }
}