#include<stdio.h>
 

#if !defined(i386) && !defined(__x86_64__) && !defined(__aarch64__)
typedef long wchar_t;
#else
#include<wchar.h>
#endif

 char const                        c01={-128};
 char volatile                     c02={-128};
 char const volatile               c03={-128};
 char                              c04={-128};
 char *                            c05={&c04};

 unsigned   char const                  uc01={255};
 unsigned   char volatile               uc02={255};
 unsigned   char const volatile         uc03={255};
 unsigned   char                        uc04={255};
 unsigned   char *                      uc05={&uc04};

 short  const                        s01={-32768};
 short  volatile                     s02={-32768};
 short  const volatile               s03={-32768};
 short                               s04={-32768};
 short  *                            s05={&s04};

 unsigned  short  const                us01={65535};
 unsigned  short  volatile             us02={65535};
 unsigned  short  const volatile       us03={65535};
 unsigned  short                       us04={65535};
 unsigned  short  *                    us05={&us04};

 int    const                        i01={-2147483648};
 int    volatile                     i02={-2147483648};
 int    const volatile               i03={-2147483648};
 int                                 i04={-2147483648};
 int    *                            i05={&i04};

 unsigned  int    const                ui01={4294967295};
 unsigned  int    volatile             ui02={4294967295};
 unsigned  int    const volatile       ui03={4294967295};
 unsigned  int                         ui04={4294967295};
 unsigned  int    *                    ui05={&ui04};

 float const                         f01={-0.590474e+38f};
 float volatile                      f02={-0.590474e+38f};
 float const volatile                f03={-0.590474e+38f};
 float                               f04={-0.590474e+38f};
 float *                             f05={&f04};

 double const                        d01={-590474e+38};
 double volatile                     d02={-590474e+38};
 double const volatile               d03={-590474e+38};
 double                              d04={-590474e+38};
 double *                            d05={&d04};

 long double const            ld01={0.841923574334e-75};
 long double volatile         ld02={0.841923574334e-75};
 long double const volatile   ld03={0.841923574334e-75};
 long double                  ld04={0.841923574334e-75};
 long double *                ld05={&ld04};

#ifndef nollint

 long long int const          lls1={-9223372036854775808};
 long long int volatile       lls2={-9223372036854775808};
 long long int const volatile lls3={-9223372036854775808};
 long long int                lls4={-9223372036854775808};
 long long int *              lls5={&lls4};

 unsigned long long int const          llu1={18446744073709551615};
 unsigned long long int volatile       llu2={18446744073709551615};
 unsigned long long int const volatile llu3={18446744073709551615};
 unsigned long long int                llu4={18446744073709551615};
 unsigned long long int *              llu5={&llu4};

#endif

 wchar_t     const          lcr1={65535};
 wchar_t     volatile       lcr2={65535};
 wchar_t     const volatile lcr3={65535};
 wchar_t                    lcr4={65535};
 wchar_t *                  lcr5={&lcr4};
int main()

{
   printf("*** 01 ** MK3 TEST ** STARTED ***\n");

   if((c01==-128)&&(c02==-128)&&(c03==-128)&&(c04==-128)&&(*c05==-128))
   printf("*** 01 - 01 ** OK ***\n");
   else
   printf("*** 01 - 01 ** NG ***\n");

   if((uc01==255)&&(uc02==255)&&(uc03==255)&&(uc04==255)&&(*uc05==255))
   printf("*** 01 - 02 ** OK ***\n");
   else
   printf("*** 01 - 02 ** NG ***\n");

   if((s01==-32768)&&
      (s02==-32768)&&
      (s03==-32768)&&
      (s04==-32768)&&
      (*s05==-32768))
   printf("*** 01 - 03 ** OK ***\n");
   else
   printf("*** 01 - 03 ** NG ***\n");

   if((us01==65535)&&
      (us02==65535)&&
      (us03==65535)&&
      (us04==65535)&&
      (*us05==65535))
   printf("*** 01 - 04 ** OK ***\n");
   else
   printf("*** 01 - 04 ** NG ***\n");

   if(( i01==-2147483648)&&
      ( i02==-2147483648)&&
      ( i03==-2147483648)&&
      ( i04==-2147483648)&&
      (*i05==-2147483648))
   printf("*** 01 - 05 ** OK ***\n");
   else
   printf("*** 01 - 05 ** NG ***\n");

   if((ui01==4294967295)&&
      (ui02==4294967295)&&
      (ui03==4294967295)&&
      (ui04==4294967295)&&
      (*ui05==4294967295))
   printf("*** 01 - 06 ** OK ***\n");
   else
   printf("*** 01 - 06 ** NG ***\n");

   if(( f01==-0.590474e+38f)&&
      ( f02==-0.590474e+38f)&&
      ( f03==-0.590474e+38f)&&
      ( f04==-0.590474e+38f)&&
      (*f05==-0.590474e+38f))
   printf("*** 01 - 07 ** OK ***\n");
   else
   printf("*** 01 - 07 ** NG ***\n");

   if(( d01== -590474e+38)&&
      ( d02== -590474e+38)&&
      ( d03== -590474e+38)&&
      ( d04== -590474e+38)&&
      (*d05== -590474e+38))
   printf("*** 01 - 08 ** OK ***\n");
   else
   printf("*** 01 - 08 ** NG ***\n");

   if((ld01==0.841923574334e-75) &&
      (ld02==0.841923574334e-75) &&
      (ld03==0.841923574334e-75) &&
      (ld04==0.841923574334e-75) &&
      (*ld05==0.841923574334e-75))

   printf("*** 01 - 09 ** OK ***\n");
   else
   printf("*** 01 - 09 ** NG ***\n");

#ifndef nollint
   if((lls1==-9223372036854775808) &&
      (lls2==-9223372036854775808) &&
      (lls3==-9223372036854775808) &&
      (lls4==-9223372036854775808) &&
      (*lls5==-9223372036854775808))

   printf("*** 01 - 10 ** OK ***\n");
   else
   printf("*** 01 - 10 ** NG ***\n");

   if((llu1==18446744073709551615) &&
      (llu2==18446744073709551615) &&
      (llu3==18446744073709551615) &&
      (llu4==18446744073709551615) &&
      (*llu5==18446744073709551615) )

   printf("*** 01 - 11 ** OK ***\n");
   else
   printf("*** 01 - 11 ** NG ***\n");

#else
   printf("*** 01 - 10 ** OK ***\n");
   printf("*** 01 - 11 ** OK ***\n");

#endif

   if((lcr1==65535) &&
      (lcr2==65535) &&
      (lcr3==65535) &&
      (lcr4==65535)&&
      (*lcr5==65535))

   printf("*** 01 - 12 ** OK ***\n");
   else
   printf("*** 01 - 12 ** NG ***\n");

   printf("*** 01 TEST ENDED ***\n");
}
