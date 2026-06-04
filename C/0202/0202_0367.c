#include <stdio.h>

void sub_1()
{
  static long double comp20_1_1 = {1.0};
  static struct C20_1_2 {
    long double comp20_1_2_1 ;
    long double comp20_1_2_2 ;
  } comp20_1_2 = {1.0, 1.0} ;
  static union C20_1_3 {
    long double comp20_1_3_1 ;
    long double comp20_1_3_2 ;
  } comp20_1_3 = {1.0} ;
  static long double comp20_1_4[10] = {1.0};
  static long double *comp20_1_5 = &comp20_1_1;
  typedef long double C20_1_6 ;
  static C20_1_6 comp20_1_6 = {1.0};
  static long double comp20_1_7[] = {1.0};

  printf("###  sub_1 ###\n");
  if (comp20_1_1 != comp20_1_2.comp20_1_2_1) printf("NG\n");
  if (comp20_1_1 != comp20_1_2.comp20_1_2_2) printf("NG\n");
  if (comp20_1_1 != comp20_1_3.comp20_1_3_1) printf("NG\n");
  if (comp20_1_1 != comp20_1_3.comp20_1_3_2) printf("NG\n");
  if (comp20_1_1 != comp20_1_4[0]) printf("NG\n");
  if (comp20_1_1 != *comp20_1_5) printf("NG\n");
  if (comp20_1_1 != comp20_1_6) printf("NG\n");
  if (comp20_1_1 != comp20_1_7[0]) printf("NG\n");

  comp20_1_1 = comp20_1_1 + comp20_1_2.comp20_1_2_1;
  comp20_1_1 = comp20_1_1 - comp20_1_2.comp20_1_2_2;
  comp20_1_1 = comp20_1_1 * comp20_1_3.comp20_1_3_1;
  comp20_1_1 = comp20_1_1 / comp20_1_3.comp20_1_3_2;
  comp20_1_1 = comp20_1_1 + comp20_1_4[0];
  if (comp20_1_1 == comp20_1_7[0]) printf("NG\n");
}

void sub_2()
{
  static long double comp20_2_0 = {1.0};
  static const long double comp20_2_1 = {1.0};
  static struct C20_2_2 {
    const long double comp20_2_2_1 ;
    const long double comp20_2_2_2 ;
  } comp20_2_2 = {1.0, 1.0} ;
  static union C20_2_3 {
    const long double comp20_2_3_1 ;
    const long double comp20_2_3_2 ;
  } comp20_2_3 = {1.0} ;
  static const long double comp20_2_4[10] = {1.0};
  static const long double *comp20_2_5 = &comp20_2_1;
  typedef long double C20_2_6 ;
  static const C20_2_6 comp20_2_6 = {1.0};
  static const long double comp20_2_7[] = {1.0};

  printf("###  sub_2 ###\n");
  if (comp20_2_1 != comp20_2_2.comp20_2_2_1) printf("NG\n");
  if (comp20_2_1 != comp20_2_2.comp20_2_2_2) printf("NG\n");
  if (comp20_2_1 != comp20_2_3.comp20_2_3_1) printf("NG\n");
  if (comp20_2_1 != comp20_2_3.comp20_2_3_2) printf("NG\n");
  if (comp20_2_1 != comp20_2_4[0]) printf("NG\n");
  if (comp20_2_1 != *comp20_2_5) printf("NG\n");
  if (comp20_2_1 != comp20_2_6) printf("NG\n");
  if (comp20_2_1 != comp20_2_7[0]) printf("NG\n");

  comp20_2_0 = comp20_2_0 + comp20_2_2.comp20_2_2_1;
  comp20_2_0 = comp20_2_0 - comp20_2_2.comp20_2_2_2;
  comp20_2_0 = comp20_2_0 * comp20_2_3.comp20_2_3_1;
  comp20_2_0 = comp20_2_0 / comp20_2_3.comp20_2_3_2;
  comp20_2_0 = comp20_2_0 + comp20_2_4[0];
  if (comp20_2_0 == comp20_2_6) printf("NG\n");
}

void sub_3()
{
  static volatile long double comp20_3_1 = {1.0};
  static struct C20_3_2 {
    volatile long double comp20_3_2_1 ;
    volatile long double comp20_3_2_2 ;
  } comp20_3_2 = {1.0, 1.0} ;
  static union C20_3_3 {
    volatile long double comp20_3_3_1 ;
    volatile long double comp20_3_3_2 ;
  } comp20_3_3 = {1.0} ;
  static volatile long double comp20_3_4[10] = {1.0};
  static volatile long double *comp20_3_5 = &comp20_3_1;
  typedef long double C20_3_6 ;
  static volatile C20_3_6 comp20_3_6 = {1.0};
  static volatile long double comp20_3_7[] = {1.0};

  printf("###  sub_3 ###\n");
  if (comp20_3_1 != comp20_3_2.comp20_3_2_1) printf("NG\n");
  if (comp20_3_1 != comp20_3_2.comp20_3_2_2) printf("NG\n");
  if (comp20_3_1 != comp20_3_3.comp20_3_3_1) printf("NG\n");
  if (comp20_3_1 != comp20_3_3.comp20_3_3_2) printf("NG\n");
  if (comp20_3_1 != comp20_3_4[0]) printf("NG\n");
  if (comp20_3_1 != *comp20_3_5) printf("NG\n");
  if (comp20_3_1 != comp20_3_6) printf("NG\n");
  if (comp20_3_1 != comp20_3_7[0]) printf("NG\n");

  *comp20_3_5 = *comp20_3_5 + comp20_3_2.comp20_3_2_1;
  *comp20_3_5 = *comp20_3_5 - comp20_3_2.comp20_3_2_2;
  *comp20_3_5 = *comp20_3_5 * comp20_3_3.comp20_3_3_1;
  *comp20_3_5 = *comp20_3_5 / comp20_3_3.comp20_3_3_2;
  *comp20_3_5 = *comp20_3_5 + comp20_3_4[0];
  if (*comp20_3_5 == comp20_3_7[0]) printf("NG\n");
}

void sub_4()
{
  static long double comp20_4_0 = {1.0};
  static const volatile long double comp20_4_1 = {1.0};
  static struct C20_4_2 {
    const volatile long double comp20_4_2_1 ;
    const volatile long double comp20_4_2_2 ;
  } comp20_4_2 = {1.0, 1.0} ;
  static union C20_4_3 {
    const volatile long double comp20_4_3_1 ;
    const volatile long double comp20_4_3_2 ;
  } comp20_4_3 = {1.0} ;
  static const volatile long double comp20_4_4[10] = {1.0};
  static const volatile long double *comp20_4_5 = &comp20_4_1;
  typedef long double C20_4_6 ;
  static const volatile C20_4_6 comp20_4_6 = {1.0};
  static const volatile long double comp20_4_7[] = {1.0};

  printf("###  sub_4 ###\n");
  if (comp20_4_1 != comp20_4_2.comp20_4_2_1) printf("NG\n");
  if (comp20_4_1 != comp20_4_2.comp20_4_2_2) printf("NG\n");
  if (comp20_4_1 != comp20_4_3.comp20_4_3_1) printf("NG\n");
  if (comp20_4_1 != comp20_4_3.comp20_4_3_2) printf("NG\n");
  if (comp20_4_1 != comp20_4_4[0]) printf("NG\n");
  if (comp20_4_1 != *comp20_4_5) printf("NG\n");
  if (comp20_4_1 != comp20_4_6) printf("NG\n");
  if (comp20_4_1 != comp20_4_7[0]) printf("NG\n");

  comp20_4_0 = comp20_4_0 + comp20_4_2.comp20_4_2_1;
  comp20_4_0 = comp20_4_0 - comp20_4_2.comp20_4_2_2;
  comp20_4_0 = comp20_4_0 * comp20_4_3.comp20_4_3_1;
  comp20_4_0 = comp20_4_0 / comp20_4_3.comp20_4_3_2;
  comp20_4_0 = comp20_4_0 + comp20_4_4[0];
  if (comp20_4_0 == comp20_4_6) printf("NG\n");
}

#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
void sub_5()
{
  static long double comp20_5_0 = {1.0};
  static long double * restrict comp20_5_1 = &comp20_5_0;
  static struct C20_5_2 {
    long double * restrict comp20_5_2_1 ;
    long double * restrict comp20_5_2_2 ;
  } comp20_5_2 = {&comp20_5_0, &comp20_5_0};
  static union C20_5_3 {
    long double * restrict comp20_5_3_1 ;
    long double * restrict comp20_5_3_2 ;
  } comp20_5_3 = {&comp20_5_0} ;
  static long double * restrict comp20_5_4[10] = {&comp20_5_0};
  static long double * restrict comp20_5_5 = &comp20_5_0;
  typedef long double C20_5_6 ;
  static C20_5_6 * restrict comp20_5_6 = &comp20_5_0;
  static long double * restrict comp20_5_7[] = {&comp20_5_0};

  printf("###  sub_5 ###\n");
  if (comp20_5_1 != comp20_5_2.comp20_5_2_1) printf("NG\n");
  if (comp20_5_1 != comp20_5_2.comp20_5_2_2) printf("NG\n");
  if (comp20_5_1 != comp20_5_3.comp20_5_3_1) printf("NG\n");
  if (comp20_5_1 != comp20_5_3.comp20_5_3_2) printf("NG\n");
  if (comp20_5_1 != comp20_5_4[0]) printf("NG\n");
  if (comp20_5_1 != comp20_5_5) printf("NG\n");
  if (comp20_5_1 != comp20_5_6) printf("NG\n");
  if (comp20_5_1 != comp20_5_7[0]) printf("NG\n");
}
#endif

int main()
{
  sub_1();
  sub_2();
  sub_3();
  sub_4();
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  sub_5();
#else
  printf("###  sub_5 ###\n");
#endif

  return 0;
}
