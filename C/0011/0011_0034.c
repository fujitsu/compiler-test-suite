#include  <stdio.h>

int main()
{
  signed              char  i1                                   ;
  signed   short      int   i2                                   ;
  signed              int   i4                                   ;
#ifdef NO_LONG_LONG
  signed   long  int   i8                                   ;
#else
  signed   long long  int   i8                                   ;
#endif
  unsigned            char  u1                                   ;
  unsigned      short int   u2                                   ;
  unsigned            int   u4                                   ;
#ifdef NO_LONG_LONG
  unsigned long  int   u8                                   ;
#else
  unsigned long long  int   u8                                   ;
#endif
  float                     r4                                   ;
  double                    r8                                   ;
#ifdef NO_LONG_DOUBLE
  double           r16                                  ;
#else
  long     double           r16                                  ;
#endif

  printf("********** TEST STARTED **********\n")     ;


  i1 = '\\'                                                   ;

  i2 = i1                                                        ;
  if (i2 == 92)
    printf("********** 01 OK **********\n")        ;
  else
    printf("********** 01 NG **********\n")        ;

  i4 = i1                                                        ;
  if (i4 == 92)
    printf("********** 02 OK **********\n")        ;
  else
    printf("********** 02 NG **********\n")        ;

  i8 = i1                                                        ;
  if (i8 == 92)
    printf("********** 03 OK **********\n")        ;
  else
    printf("********** 03 NG **********\n")        ;

  u1 = i1                                                        ;
  if (u1 =='\\')
    printf("********** 04 OK **********\n")        ;
  else
    printf("********** 04 NG **********\n")        ;

  u2 = i1                                                        ;
  if (u2 == 92u)
    printf("********** 05 OK **********\n")        ;
  else
    printf("********** 05 NG **********\n")        ;

  u4 = i1                                                        ;
  if (u4 == 92u)
    printf("********** 06 OK **********\n")        ;
  else
    printf("********** 06 NG **********\n")        ;

  u8 = i1                                                        ;
  if (u8 == 92u)
    printf("********** 07 OK **********\n")        ;
  else
    printf("********** 07 NG **********\n")        ;

  r4 = i1                                                        ;
  if (r4 >  91.9f && r4 < 92.1f)
    printf("********** 08 OK **********\n")        ;
  else
    printf("********** 08 NG **********\n")        ;

  r8 = i1                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** 09 OK **********\n")        ;
  else
    printf("********** 09 NG **********\n")        ;

  r16 = i1                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** 10 OK **********\n")        ;
  else
    printf("********** 10 NG **********\n")        ;



  i2 = 92                                                       ;

  i1 = i2                                                        ;
  if (i1 == '\\')
    printf("********** 11 OK **********\n")        ;
  else
    printf("********** 11 NG **********\n")        ;

  i4 = i2                                                        ;
  if (i4 ==92)
    printf("********** 12 OK **********\n")        ;
  else
    printf("********** 12 NG **********\n")        ;

  i8 = i2                                                        ;
  if (i8 ==92)
    printf("********** 13 OK **********\n")        ;
  else
    printf("********** 13 NG **********\n")        ;

  u1 = i2                                                        ;
  if (u1 =='\\')
    printf("********** 14 OK **********\n")        ;
  else
    printf("********** 14 NG **********\n")        ;

  u2 = i2                                                        ;
  if (u2 == 92u)
    printf("********** 15 OK **********\n")        ;
  else
    printf("********** 15 NG **********\n")        ;

  u4 = i2                                                        ;
  if (u4 == 92u)
    printf("********** 16 OK **********\n")        ;
  else
    printf("********** 16 NG **********\n")        ;

  u8 = i2                                                        ;
  if (u8 == 92u)
    printf("********** 17 OK **********\n")        ;
  else
    printf("********** 17 NG **********\n")        ;

  r4 = i2                                                        ;
  if (r4 >91.9f && r4 < 92.1f)
    printf("********** 18 OK **********\n")        ;
  else
    printf("********** 18 NG **********\n")        ;

  r8 = i2                                                        ;
  if (r8 >91.9 && r8 < 92.1)
    printf("********** 19 OK **********\n")        ;
  else
    printf("********** 19 NG **********\n")        ;

  r16 = i2                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** 20 OK **********\n")        ;
  else
    printf("********** 20 NG **********\n")        ;



  i4 = 92                                                       ;

  i1 = i4                                                        ;
  if (i1 == '\\')
    printf("********** 21 OK **********\n")        ;
  else
    printf("********** 21 NG **********\n")        ;

  i2 = i4                                                        ;
  if (i2 ==92)
    printf("********** 22 OK **********\n")        ;
  else
    printf("********** 22 NG **********\n")        ;

  i8 = i4                                                        ;
  if (i8 ==92)
    printf("********** 23 OK **********\n")        ;
  else
    printf("********** 23 NG **********\n")        ;

  u1 = i4                                                        ;
  if (u1 =='\\')
    printf("********** 24 OK **********\n")        ;
  else
    printf("********** 24 NG **********\n")        ;

  u2 = i4                                                        ;
  if (u2 == 92u)
    printf("********** 25 OK **********\n")        ;
  else
    printf("********** 25 NG **********\n")        ;

  u4 = i4                                                        ;
  if (u4 == 92u)
    printf("********** 26 OK **********\n")        ;
  else
    printf("********** 26 NG **********\n")        ;

  u8 = i4                                                        ;
  if (u8 == 92u)
    printf("********** 27 OK **********\n")        ;
  else
    printf("********** 27 NG **********\n")        ;

  r4 = i4                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** 28 OK **********\n")        ;
  else
    printf("********** 28 NG **********\n")        ;

  r8 = i4                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** 29 OK **********\n")        ;
  else
    printf("********** 29 NG **********\n")        ;

  r16 = i4                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** 30 OK **********\n")        ;
  else
    printf("********** 30 NG **********\n")        ;



  i8 = 92                                                       ;

  i1 = i8                                                        ;
  if (i1 == '\\')
    printf("********** 31 OK **********\n")        ;
  else
    printf("********** 31 NG **********\n")        ;

  i2 = i8                                                        ;
  if (i2 ==92)
    printf("********** 32 OK **********\n")        ;
  else
    printf("********** 32 NG **********\n")        ;

  i4 = i8                                                        ;
  if (i4 ==92)
    printf("********** 33 OK **********\n")        ;
  else
    printf("********** 33 NG **********\n")        ;

  u1 = i8                                                        ;
  if (u1 =='\\')
    printf("********** 34 OK **********\n")        ;
  else
    printf("********** 34 NG **********\n")        ;

  u2 = i8                                                        ;
  if (u2 == 92u)
    printf("********** 35 OK **********\n")        ;
  else
    printf("********** 35 NG **********\n")        ;

  u4 = i8                                                        ;
  if (u4 == 92u)
    printf("********** 36 OK **********\n")        ;
  else
    printf("********** 36 NG **********\n")        ;

  u8 = i8                                                        ;
  if (u8 == 92u)
    printf("********** 37 OK **********\n")        ;
  else
    printf("********** 37 NG **********\n")        ;

  r4 = i8                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** 38 OK **********\n")        ;
  else
    printf("********** 38 NG **********\n")        ;

  r8 = i8                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** 39 OK **********\n")        ;
  else
    printf("********** 39 NG **********\n")        ;

  r16 = i8                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** 40 OK **********\n")        ;
  else
    printf("********** 40 NG **********\n")        ;



  u1 = '\\'                                                       ;

  i1 = u1                                                        ;
  if (i1 == '\\')
    printf("********** 41 OK **********\n")        ;
  else
    printf("********** 41 NG **********\n")        ;

  i2 = u1                                                        ;
  if (i2 ==92)
    printf("********** 42 OK **********\n")        ;
  else
    printf("********** 42 NG **********\n")        ;

  i4 = u1                                                        ;
  if (i4 ==92)
    printf("********** 43 OK **********\n")        ;
  else
    printf("********** 43 NG **********\n")        ;

  i8 = u1                                                        ;
  if (i8 ==92)
    printf("********** 44 OK **********\n")        ;
  else
    printf("********** 44 NG **********\n")        ;

  u2 = u1                                                        ;
  if (u2 == 92u)
    printf("********** 45 OK **********\n")        ;
  else
    printf("********** 45 NG **********\n")        ;

  u4 = u1                                                        ;
  if (u4 == 92u)
    printf("********** 46 OK **********\n")        ;
  else
    printf("********** 46 NG **********\n")        ;

  u8 = u1                                                        ;
  if (u8 == 92u)
    printf("********** 47 OK **********\n")        ;
  else
    printf("********** 47 NG **********\n")        ;

  r4 = u1                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** 48 OK **********\n")        ;
  else
    printf("********** 48 NG **********\n")        ;

  r8 = u1                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** 49 OK **********\n")        ;
  else
    printf("********** 49 NG **********\n")        ;

  r16 = u1                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** 50 OK **********\n")        ;
  else
    printf("********** 50 NG **********\n")        ;



  u2 = 92                                                       ;

  i1 = u2                                                        ;
  if (i1 == '\\')
    printf("********** 51 OK **********\n")        ;
  else
    printf("********** 51 NG **********\n")        ;

  i2 = u2                                                        ;
  if (i2 ==92)
    printf("********** 52 OK **********\n")        ;
  else
    printf("********** 52 NG **********\n")        ;

  i4 = u2                                                        ;
  if (i4 ==92)
    printf("********** 53 OK **********\n")        ;
  else
    printf("********** 53 NG **********\n")        ;

  i8 = u2                                                        ;
  if (i8 ==92u)
    printf("********** 54 OK **********\n")        ;
  else
    printf("********** 54 NG **********\n")        ;

  u1 = u2                                                        ;
  if (u1 == 92u)
    printf("********** 55 OK **********\n")        ;
  else
    printf("********** 55 NG **********\n")        ;

  u4 = u2                                                        ;
  if (u4 == 92u)
    printf("********** 56 OK **********\n")        ;
  else
    printf("********** 56 NG **********\n")        ;

  u8 = u2                                                        ;
  if (u8 == 92u)
    printf("********** 57 OK **********\n")        ;
  else
    printf("********** 57 NG **********\n")        ;

  r4 = u2                                                        ;
  if (r4 >91.9f && r4 < 92.1f)
    printf("********** 58 OK **********\n")        ;
  else
    printf("********** 58 NG **********\n")        ;

  r8 = u2                                                        ;
  if (r8 >91.9 && r8 < 92.1)
    printf("********** 59 OK **********\n")        ;
  else
    printf("********** 59 NG **********\n")        ;

  r16 = u2                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** 60 OK **********\n")        ;
  else
    printf("********** 60 NG **********\n")        ;



  u4 = 92                                                       ;

  i1 = u4                                                        ;
  if (i1 == '\\')
    printf("********** 61 OK **********\n")        ;
  else
    printf("********** 61 NG **********\n")        ;

  i2 = u4                                                        ;
  if (i2 ==92)
    printf("********** 62 OK **********\n")        ;
  else
    printf("********** 62 NG **********\n")        ;

  i4 = u4                                                        ;
  if (i4 ==92)
    printf("********** 63 OK **********\n")        ;
  else
    printf("********** 63 NG **********\n")        ;

  i8 = u4                                                        ;
  if (i8 ==92u)
    printf("********** 64 OK **********\n")        ;
  else
    printf("********** 64 NG **********\n")        ;

  u1 = u4                                                        ;
  if (u2 == 92u)
    printf("********** 65 OK **********\n")        ;
  else
    printf("********** 65 NG **********\n")        ;

  u2 = u4                                                        ;
  if (u4 == 92u)
    printf("********** 66 OK **********\n")        ;
  else
    printf("********** 66 NG **********\n")        ;

  u8 = u4                                                        ;
  if (u8 == 92u)
    printf("********** 67 OK **********\n")        ;
  else
    printf("********** 67 NG **********\n")        ;

  r4 = u4                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** 68 OK **********\n")        ;
  else
    printf("********** 68 NG **********\n")        ;

  r8 = u4                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** 69 OK **********\n")        ;
  else
    printf("********** 69 NG **********\n")        ;

  r16 = u4                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** 70 OK **********\n")        ;
  else
    printf("********** 70 NG **********\n")        ;



  u8 = 92u                                                      ;

  i1 = u8                                                        ;
  if (i1 == '\\')
    printf("********** 71 OK **********\n")        ;
  else
    printf("********** 71 NG **********\n")        ;

  i2 = u8                                                        ;
  if (i2 ==92)
    printf("********** 72 OK **********\n")        ;
  else
    printf("********** 72 NG **********\n")        ;

  i4 = u8                                                        ;
  if (i4 ==92)
    printf("********** 73 OK **********\n")        ;
  else
    printf("********** 73 NG **********\n")        ;

  i8 = u8                                                        ;
  if (i8 ==92u)
    printf("********** 74 OK **********\n")        ;
  else
    printf("********** 74 NG **********\n")        ;

  u1 = u8                                                        ;
  if (u1 == 92u)
    printf("********** 75 OK **********\n")        ;
  else
    printf("********** 75 NG **********\n")        ;

  u2 = u8                                                        ;
  if (u2 == 92u)
    printf("********** 76 OK **********\n")        ;
  else
    printf("********** 76 NG **********\n")        ;

  u4 = u8                                                        ;
  if (u4 == 92u)
    printf("********** 77 OK **********\n")        ;
  else
    printf("********** 77 NG **********\n")        ;

  r4 = u8                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** 78 OK **********\n")        ;
  else
    printf("********** 78 NG **********\n")        ;

  r8 = u8                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** 79 OK **********\n")        ;
  else
    printf("********** 79 NG **********\n")        ;

  r16 = u8                                                       ;
  if (r16 > 91.9l && r16 < 92.1)
    printf("********** 80 OK **********\n")        ;
  else
    printf("********** 80 NG **********\n")        ;



  r4 = 92.0f                                                    ;

  i1 = r4                                                        ;
  if (i1 == '\\')
    printf("********** 81 OK **********\n")        ;
  else
    printf("********** 81 NG **********\n")        ;

  i2 = r4                                                        ;
  if (i2 ==92)
    printf("********** 82 OK **********\n")        ;
  else
    printf("********** 82 NG **********\n")        ;

  i4 = r4                                                        ;
  if (i4 ==92)
    printf("********** 83 OK **********\n")        ;
  else
    printf("********** 83 NG **********\n")        ;

  i8 = r4                                                        ;
  if (i8 ==92u)
    printf("********** 84 OK **********\n")        ;
  else
    printf("********** 84 NG **********\n")        ;

  u1 = r4                                                        ;
  if (u1 == 92u)
    printf("********** 85 OK **********\n")        ;
  else
    printf("********** 85 NG **********\n")        ;

  u2 = r4                                                        ;
  if (u2 == 92u)
    printf("********** 86 OK **********\n")        ;
  else
    printf("********** 86 NG **********\n")        ;

  u4 = r4                                                        ;
  if (u4 == 92u)
    printf("********** 87 OK **********\n")        ;
  else
    printf("********** 87 NG **********\n")        ;

  u8 = r4                                                        ;
  if (u8 == 92u)
    printf("********** 88 OK **********\n")        ;
  else
    printf("********** 88 NG **********\n")        ;

  r8 = r4                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** 89 OK **********\n")        ;
  else
    printf("********** 89 NG **********\n")        ;

  r16 = r4                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** 90 OK **********\n")        ;
  else
    printf("********** 90 NG **********\n")        ;



  r8 = 92.0                                                     ;

  i1 = r8                                                        ;
  if (i1 == '\\')
    printf("********** 91 OK **********\n")        ;
  else
    printf("********** 91 NG **********\n")        ;

  i2 = r8                                                        ;
  if (i2 ==92)
    printf("********** 92 OK **********\n")        ;
  else
    printf("********** 92 NG **********\n")        ;

  i4 = r8                                                        ;
  if (i4 ==92)
    printf("********** 93 OK **********\n")        ;
  else
    printf("********** 93 NG **********\n")        ;

  i8 = r8                                                        ;
  if (i8 ==92u)
    printf("********** 94 OK **********\n")        ;
  else
    printf("********** 94 NG **********\n")        ;

  u1 = r8                                                        ;
  if (u1 == '\\')
    printf("********** 95 OK **********\n")        ;
  else
    printf("********** 95 NG **********\n")        ;

  u2 = r8                                                        ;
  if (u2 == 92u)
    printf("********** 96 OK **********\n")        ;
  else
    printf("********** 96 NG **********\n")        ;

  u4 = r8                                                        ;
  if (u4 == 92u)
    printf("********** 97 OK **********\n")        ;
  else
    printf("********** 97 NG **********\n")        ;

  u8 = r8                                                        ;
  if (u8 == 92u)
    printf("********** 98 OK **********\n")        ;
  else
    printf("********** 98 NG **********\n")        ;

  r4 = r8                                                       ;
  if (r4 > 91.9l && r4 < 92.1l)
    printf("********** 99 OK **********\n")        ;
  else
    printf("********** 99 NG **********\n")        ;

  r16 = r8                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** A0 OK **********\n")        ;
  else
    printf("********** A0 NG **********\n")        ;



  r16 = 92.0l                                                   ;

  i1 = r16                                                       ;
  if (i1 == '\\')
    printf("********** A1 OK **********\n")        ;
  else
    printf("********** A1 NG **********\n")        ;

  i2 = r16                                                       ;
  if (i2 ==92)
    printf("********** A2 OK **********\n")        ;
  else
    printf("********** A2 NG **********\n")        ;

  i4 = r16                                                       ;
  if (i4 ==92)
    printf("********** A3 OK **********\n")        ;
  else
    printf("********** A3 NG **********\n")        ;

  i8 = r16                                                       ;
  if (i8 ==92u)
    printf("********** A4 OK **********\n")        ;
  else
    printf("********** A4 NG **********\n")        ;

  u1 = r16                                                       ;
  if (u1 == 92u)
    printf("********** A5 OK **********\n")        ;
  else
    printf("********** A5 NG **********\n")        ;

  u2 = r16                                                       ;
  if (u2 == 92u)
    printf("********** A6 OK **********\n")        ;
  else
    printf("********** A6 NG **********\n")        ;

  u4 = r16                                                       ;
  if (u4 == 92u)
    printf("********** A7 OK **********\n")        ;
  else
    printf("********** A7 NG **********\n")        ;

  u8 = r16                                                       ;
  if (u8 == 92u)
    printf("********** A8 OK **********\n")        ;
  else
    printf("********** A8 NG **********\n")        ;

  r4 = r16                                                       ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** A9 OK **********\n")        ;
  else
    printf("********** A9 NG **********\n")        ;

  r8 = r16                                                       ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** B0 OK **********\n")        ;
  else
    printf("********** B0 NG **********\n")        ;



  printf("********** TEST ENDED **********\n")       ;

}
