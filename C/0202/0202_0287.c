#include <stdio.h>

#define ARRAY_SIZE 8

#define t(x,y,z) x ## y ## z
#define t(x,y,z) x ## y ## z
#define cat(x, y) x##y
#define xcat(x, y) cat(x,y)
#define _ 1

#define a()\
(char ) \
1.0

#define b(i) i

int main()
{
  int i;
  int j[]={t(1,2,3), t(,2,3), t(1,,3), t(1,2,), t(,,3), t(,2,), t(1,,), t(,,)0};
  int ans[]={ 123 ,  23 ,  13 ,  12 ,  3 ,  2 ,  1 , 0};

  for(i=0; i<ARRAY_SIZE; i++){
    if(j[i]!=ans[i])
      printf("ng i=%d\n",i);
  }

  if(_ == 1 && xcat(xcat(1,2),3) == 123)
    printf("ok2\n");
  else
    printf("ng2\n");

  if(a()==1 && b(2)==2)
    printf("ok3\n");
  else
    printf("ng3\n");
  return 0;
}
