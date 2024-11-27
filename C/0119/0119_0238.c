#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  signed              char  i1                                   ;
  signed   short      int   i2                                   ;
  signed              int   i4                                   ;
  signed   long long  int   i8                                   ;
  unsigned            char  u1                                   ;
  unsigned      short int   u2                                   ;
  unsigned            int   u4                                   ;
  unsigned long long  int   u8                                   ;
  float                     r4                                   ;
  double                    r8                                   ;
  long     double           r16                                  ;

  printf("********** SCOCON1 TEST STARTED **********\n")     ;


  i1 = '\\'                                                   ;

  i2 = i1                                                        ;
  if (i2 == 92)
    printf("********** SCOCON1 - 01 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 01 NG **********\n")        ;

  i4 = i1                                                        ;
  if (i4 == 92)
    printf("********** SCOCON1 - 02 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 02 NG **********\n")        ;

  i8 = i1                                                        ;
  if (i8 == 92)
    printf("********** SCOCON1 - 03 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 03 NG **********\n")        ;

  u1 = i1                                                        ;
  if (u1 =='\\')
    printf("********** SCOCON1 - 04 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 04 NG **********\n")        ;

  u2 = i1                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 05 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 05 NG **********\n")        ;

  u4 = i1                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 06 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 06 NG **********\n")        ;

  u8 = i1                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 07 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 07 NG **********\n")        ;

  r4 = i1                                                        ;
  if (r4 >  91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - 08 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 08 NG **********\n")        ;

  r8 = i1                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 09 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 09 NG **********\n")        ;

  r16 = i1                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - 10 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 10 NG **********\n")        ;


  i2 = 92                                                       ;

  i1 = i2                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 11 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 11 NG **********\n")        ;

  i4 = i2                                                        ;
  if (i4 ==92)
    printf("********** SCOCON1 - 12 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 12 NG **********\n")        ;

  i8 = i2                                                        ;
  if (i8 ==92)
    printf("********** SCOCON1 - 13 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 13 NG **********\n")        ;

  u1 = i2                                                        ;
  if (u1 =='\\')
    printf("********** SCOCON1 - 14 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 14 NG **********\n")        ;

  u2 = i2                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 15 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 15 NG **********\n")        ;

  u4 = i2                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 16 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 16 NG **********\n")        ;

  u8 = i2                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 17 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 17 NG **********\n")        ;

  r4 = i2                                                        ;
  if (r4 >91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - 18 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 18 NG **********\n")        ;

  r8 = i2                                                        ;
  if (r8 >91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 19 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 19 NG **********\n")        ;

  r16 = i2                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - 20 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 20 NG **********\n")        ;

  i4 = 92                                                       ;

  i1 = i4                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 21 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 21 NG **********\n")        ;

  i2 = i4                                                        ;
  if (i2 ==92)
    printf("********** SCOCON1 - 22 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 22 NG **********\n")        ;

  i8 = i4                                                        ;
  if (i8 ==92)
    printf("********** SCOCON1 - 23 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 23 NG **********\n")        ;

  u1 = i4                                                        ;
  if (u1 =='\\')
    printf("********** SCOCON1 - 24 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 24 NG **********\n")        ;

  u2 = i4                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 25 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 25 NG **********\n")        ;

  u4 = i4                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 26 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 26 NG **********\n")        ;

  u8 = i4                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 27 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 27 NG **********\n")        ;

  r4 = i4                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - 28 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 28 NG **********\n")        ;

  r8 = i4                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 29 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 29 NG **********\n")        ;

  r16 = i4                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - 30 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 30 NG **********\n")        ;


  i8 = 92                                                       ;

  i1 = i8                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 31 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 31 NG **********\n")        ;

  i2 = i8                                                        ;
  if (i2 ==92)
    printf("********** SCOCON1 - 32 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 32 NG **********\n")        ;

  i4 = i8                                                        ;
  if (i4 ==92)
    printf("********** SCOCON1 - 33 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 33 NG **********\n")        ;

  u1 = i8                                                        ;
  if (u1 =='\\')
    printf("********** SCOCON1 - 34 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 34 NG **********\n")        ;

  u2 = i8                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 35 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 35 NG **********\n")        ;

  u4 = i8                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 36 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 36 NG **********\n")        ;

  u8 = i8                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 37 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 37 NG **********\n")        ;

  r4 = i8                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - 38 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 38 NG **********\n")        ;

  r8 = i8                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 39 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 39 NG **********\n")        ;

  r16 = i8                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - 40 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 40 NG **********\n")        ;


  u1 = '\\'                                                       ;

  i1 = u1                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 41 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 41 NG **********\n")        ;

  i2 = u1                                                        ;
  if (i2 ==92)
    printf("********** SCOCON1 - 42 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 42 NG **********\n")        ;

  i4 = u1                                                        ;
  if (i4 ==92)
    printf("********** SCOCON1 - 43 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 43 NG **********\n")        ;

  i8 = u1                                                        ;
  if (i8 ==92)
    printf("********** SCOCON1 - 44 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 44 NG **********\n")        ;

  u2 = u1                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 45 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 45 NG **********\n")        ;

  u4 = u1                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 46 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 46 NG **********\n")        ;

  u8 = u1                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 47 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 47 NG **********\n")        ;

  r4 = u1                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - 48 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 48 NG **********\n")        ;

  r8 = u1                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 49 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 49 NG **********\n")        ;

  r16 = u1                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - 50 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 50 NG **********\n")        ;


  u2 = 92                                                       ;

  i1 = u2                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 51 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 51 NG **********\n")        ;

  i2 = u2                                                        ;
  if (i2 ==92)
    printf("********** SCOCON1 - 52 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 52 NG **********\n")        ;

  i4 = u2                                                        ;
  if (i4 ==92)
    printf("********** SCOCON1 - 53 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 53 NG **********\n")        ;

  i8 = u2                                                        ;
  if (i8 ==92u)
    printf("********** SCOCON1 - 54 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 54 NG **********\n")        ;

  u1 = u2                                                        ;
  if (u1 == 92u)
    printf("********** SCOCON1 - 55 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 55 NG **********\n")        ;

  u4 = u2                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 56 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 56 NG **********\n")        ;

  u8 = u2                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 57 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 57 NG **********\n")        ;

  r4 = u2                                                        ;
  if (r4 >91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - 58 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 58 NG **********\n")        ;

  r8 = u2                                                        ;
  if (r8 >91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 59 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 59 NG **********\n")        ;

  r16 = u2                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - 60 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 60 NG **********\n")        ;


  u4 = 92                                                       ;

  i1 = u4                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 61 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 61 NG **********\n")        ;

  i2 = u4                                                        ;
  if (i2 ==92)
    printf("********** SCOCON1 - 62 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 62 NG **********\n")        ;

  i4 = u4                                                        ;
  if (i4 ==92)
    printf("********** SCOCON1 - 63 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 63 NG **********\n")        ;

  i8 = u4                                                        ;
  if (i8 ==92u)
    printf("********** SCOCON1 - 64 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 64 NG **********\n")        ;

  u1 = u4                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 65 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 65 NG **********\n")        ;

  u2 = u4                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 66 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 66 NG **********\n")        ;

  u8 = u4                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 67 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 67 NG **********\n")        ;

  r4 = u4                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - 68 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 68 NG **********\n")        ;

  r8 = u4                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 69 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 69 NG **********\n")        ;

  r16 = u4                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - 70 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 70 NG **********\n")        ;


  u8 = 92u                                                      ;

  i1 = u8                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 71 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 71 NG **********\n")        ;

  i2 = u8                                                        ;
  if (i2 ==92)
    printf("********** SCOCON1 - 72 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 72 NG **********\n")        ;

  i4 = u8                                                        ;
  if (i4 ==92)
    printf("********** SCOCON1 - 73 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 73 NG **********\n")        ;

  i8 = u8                                                        ;
  if (i8 ==92u)
    printf("********** SCOCON1 - 74 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 74 NG **********\n")        ;

  u1 = u8                                                        ;
  if (u1 == 92u)
    printf("********** SCOCON1 - 75 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 75 NG **********\n")        ;

  u2 = u8                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 76 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 76 NG **********\n")        ;

  u4 = u8                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 77 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 77 NG **********\n")        ;

  r4 = u8                                                        ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - 78 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 78 NG **********\n")        ;

  r8 = u8                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 79 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 79 NG **********\n")        ;

  r16 = u8                                                       ;
  if (r16 > 91.9l && r16 < 92.1)
    printf("********** SCOCON1 - 80 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 80 NG **********\n")        ;


  r4 = 92.0f                                                    ;

  i1 = r4                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 81 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 81 NG **********\n")        ;

  i2 = r4                                                        ;
  if (i2 ==92)
    printf("********** SCOCON1 - 82 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 82 NG **********\n")        ;

  i4 = r4                                                        ;
  if (i4 ==92)
    printf("********** SCOCON1 - 83 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 83 NG **********\n")        ;

  i8 = r4                                                        ;
  if (i8 ==92u)
    printf("********** SCOCON1 - 84 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 84 NG **********\n")        ;

  u1 = r4                                                        ;
  if (u1 == 92u)
    printf("********** SCOCON1 - 85 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 85 NG **********\n")        ;

  u2 = r4                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 86 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 86 NG **********\n")        ;

  u4 = r4                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 87 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 87 NG **********\n")        ;

  u8 = r4                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 88 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 88 NG **********\n")        ;

  r8 = r4                                                        ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** SCOCON1 - 89 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 89 NG **********\n")        ;

  r16 = r4                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - 90 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 90 NG **********\n")        ;


  r8 = 92.0                                                     ;

  i1 = r8                                                        ;
  if (i1 == '\\')
    printf("********** SCOCON1 - 91 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 91 NG **********\n")        ;

  i2 = r8                                                        ;
  if (i2 ==92)
    printf("********** SCOCON1 - 92 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 92 NG **********\n")        ;

  i4 = r8                                                        ;
  if (i4 ==92)
    printf("********** SCOCON1 - 93 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 93 NG **********\n")        ;

  i8 = r8                                                        ;
  if (i8 ==92u)
    printf("********** SCOCON1 - 94 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 94 NG **********\n")        ;

  u1 = r8                                                        ;
  if (u1 == '\\')
    printf("********** SCOCON1 - 95 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 95 NG **********\n")        ;

  u2 = r8                                                        ;
  if (u2 == 92u)
    printf("********** SCOCON1 - 96 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 96 NG **********\n")        ;

  u4 = r8                                                        ;
  if (u4 == 92u)
    printf("********** SCOCON1 - 97 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 97 NG **********\n")        ;

  u8 = r8                                                        ;
  if (u8 == 92u)
    printf("********** SCOCON1 - 98 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 98 NG **********\n")        ;

  r4 = r8                                                       ;
  if (r4 > 91.9l && r4 < 92.1l)
    printf("********** SCOCON1 - 99 OK **********\n")        ;
  else
    printf("********** SCOCON1 - 99 NG **********\n")        ;

  r16 = r8                                                       ;
  if (r16 > 91.9l && r16 < 92.1l)
    printf("********** SCOCON1 - A0 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A0 NG **********\n")        ;

  r16 = 92.0l                                                   ;

  i1 = r16                                                       ;
  if (i1 == '\\')
    printf("********** SCOCON1 - A1 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A1 NG **********\n")        ;

  i2 = r16                                                       ;
  if (i2 ==92)
    printf("********** SCOCON1 - A2 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A2 NG **********\n")        ;

  i4 = r16                                                       ;
  if (i4 ==92)
    printf("********** SCOCON1 - A3 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A3 NG **********\n")        ;

  i8 = r16                                                       ;
  if (i8 ==92u)
    printf("********** SCOCON1 - A4 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A4 NG **********\n")        ;

  u1 = r16                                                       ;
  if (u1 == 92u)
    printf("********** SCOCON1 - A5 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A5 NG **********\n")        ;

  u2 = r16                                                       ;
  if (u2 == 92u)
    printf("********** SCOCON1 - A6 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A6 NG **********\n")        ;

  u4 = r16                                                       ;
  if (u4 == 92u)
    printf("********** SCOCON1 - A7 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A7 NG **********\n")        ;

  u8 = r16                                                       ;
  if (u8 == 92u)
    printf("********** SCOCON1 - A8 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A8 NG **********\n")        ;

  r4 = r16                                                       ;
  if (r4 > 91.9f && r4 < 92.1f)
    printf("********** SCOCON1 - A9 OK **********\n")        ;
  else
    printf("********** SCOCON1 - A9 NG **********\n")        ;

  r8 = r16                                                       ;
  if (r8 > 91.9 && r8 < 92.1)
    printf("********** SCOCON1 - B0 OK **********\n")        ;
  else
    printf("********** SCOCON1 - B0 NG **********\n")        ;


  printf("********** SCOCON1 TEST ENDED **********\n")       ;

exit (0);
}
