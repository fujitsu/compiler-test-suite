
#include <stdio.h>

  union Un1 {
    int  Un1_i;
    long Un1_l;
  };

  union Un1 extern_Un1(union Un1 Un1_1) {
    Un1_1.Un1_i = 1;
    Un1_1.Un1_l = 10;
    return Un1_1;
  }

  static union Un1 static_Un1(union Un1 Un1_1) {
    Un1_1.Un1_i = 1;
    Un1_1.Un1_l = 10;
    return Un1_1;
  }


#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 



int main()
{
  union Un1 Un1_1={0}, Un1_2={0};

  Un1_1 = extern_Un1(Un1_1);
  Un1_2 = static_Un1(Un1_2);

  printf(" OK \n");
  return 0;
}
