


#include <stdio.h>

class Hawaii_core   {
public:
    void Quit(){;}
};

class Hawaii_core_Menu {
public:
    void Do();
private:
    void (Hawaii_core::*_func)();
};

void Hawaii_core_Menu::Do() { 
   if ( _func ==0 )                
     printf("ok\n");
   else
     printf("ng \n");
}

Hawaii_core_Menu obj;
int main()
{
  obj.Do();
}
