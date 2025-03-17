#include <stdio.h>
union tag2 {
  long double r16;
  int i4;

};

union tag2 sub()
{
    union tag2 un6;
    un6.i4 = 1;

    return un6;
}
int main()
{
    union tag2 run2;
    run2 = sub(); 
    printf("%d\n",run2.i4);
}




