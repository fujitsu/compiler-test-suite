#include <stdio.h>
int i(char c)
{
  if(0x0a == c)
    return 0;
  if(c >= 0x01 && c <= 0x1f)
    return 1;
  if(c >= 0x80 || c < 0)    
    return 1;

  return 0;
}
int main()
{
int ii = i(',');
if(ii != 0) puts(" ng");
else puts(" ok");
}
