#include <stdio.h>
int main()
  {
    {
      unsigned long int   func0801(unsigned long int);
      unsigned long int   bsul0801 = 4294967294, bsul0802;
      bsul0802=func0801(bsul0801);
      printf("bsul0802(correct:1)=%d\n",bsul0802);
    }
  }

unsigned long int func0801 (register unsigned long int  bsul0803)
  {
    unsigned long int  bsit0801 = 4294967293, bsit0802 = 1;
    unsigned long int  bsul0804 = 0;
    if  (bsul0803 == bsit0801 == bsit0802--) {
      bsul0804--;
      printf("route1:%d\n",bsul0804);
    }
    else {
      bsul0804 = bsul0803 / bsit0801;
      printf("route2:%d\n",bsul0804);
    }
    return (bsul0804);
  }
