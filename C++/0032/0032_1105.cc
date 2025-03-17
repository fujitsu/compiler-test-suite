#include <stdio.h>
class A {
 public:
  int a;
};
int main()
{
  int A::*mp;
  mp = (int A::*)0;
  if ( mp == &A::a )
    printf("ng\n");
  else
    {
      int (A::*mfp)(void);
      mfp = (int (A::*)(void))0; 
      if ( mfp == 0 )
	printf("ok\n");
      else
	printf("ng\n");
    }
}
