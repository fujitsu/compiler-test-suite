#include <stdio.h>
#if __GNUC__
static int bac();
#endif 
int main()
{
  int abc = 20;
  int cba = 30;
#if !__GNUC__
  static int bac();
#endif 
  abc = 0;
  cba = 10;
  if( abc==0 && cba==10 && bac()==20 )
   printf(" ok \n");
  else
   printf(" ng \n");
}
static int bac();
static int bac()
{
  return 20;
}
