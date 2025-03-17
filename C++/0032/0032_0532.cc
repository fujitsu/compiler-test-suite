
class Dtorw2
	{
public:
	Dtorw2(){}
	};
#include <stdio.h>
int main(){
  static Dtorw2 second_init ; 
		
  puts("ok");
}
   
