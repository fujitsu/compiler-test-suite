#include  <stdio.h>

int main()
{
  int  i;
  int  tb1[100];
  int  tb2[100];
  int  tb3[100];
  volatile int  tmp1,tmp2,tmp3,tmp4;

      for(i=0,tmp4=0; i< 99 ; i++) {
            tmp1 = tb1[i] = i;
            tmp2 = tb2[i] = tb1[i]+5;
            tmp3 = tb3[i] = tb2[i]+tb1[i];
            tmp4 = (tmp3+tmp2-tmp1)+tmp4;
      }
      if(tmp4 == 10692)
              printf(" volatile test ==> ok\n");
      else
              printf(" volatile test ==> ng\n");
}
