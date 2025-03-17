#include <cassert>

int main()
{   
    int t = 1;
    if(int &r = t;r > 0)
    {
      assert(r == 1);
    }
}
