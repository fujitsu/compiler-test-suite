#include <stdio.h>

int main()
{
  struct tag {
             signed char                    b01:8  ;
             signed char                    b02:8  ;
             char                    b03:8  ;
             short int               b04:9  ;
             short int               b05:4  ;
             short int               b06:16 ;
             int                     b07:17 ;
             int                     b08:6  ;
             int                     b09:32 ;
             unsigned char           b10:1  ;
             unsigned char           b11:2  ;
             unsigned char           b12:8  ;
             unsigned short int      b13:9  ;
             unsigned short int      b14:4  ;
             unsigned short int      b15:16 ;
             unsigned int            b16:17 ;
             unsigned int            b17:6  ;
             unsigned int            b18:32 ;
             } ;
  struct tag st1,st2,*stp ;
  signed char            sc  ;
  signed short int       ssi ;
  signed int             si  ;
  signed long long int   sli ;
  unsigned char          uc  ;
  unsigned short int     usi ;
  unsigned int           ui  ;
  unsigned long long int uli ;

  printf("********** TEST START **********\n");

  /* bit <- number */
  st1.b01 = 1 ;
  st1.b02 = 2 ;
  st1.b03 = 3 ;
  st1.b04 = 4 ;
  st1.b05 = 5 ;
  st1.b06 = 6 ;
  st1.b07 = 7 ;
  st1.b08 = 8 ;
  st1.b09 = 9 ;
  st1.b10 = 1 ;
  st1.b11 = 2 ;
  st1.b12 = 3 ;
  st1.b13 = 4 ;
  st1.b14 = 5 ;
  st1.b15 = 6 ;
  st1.b16 = 7 ;
  st1.b17 = 8 ;
  st1.b18 = 9 ;

  if (st1.b01 == -1)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");
  if (st1.b02 == -2)
      printf("***** 02 ***** O   K *****\n");
  else
      printf("***** 02 ***** N   G *****\n");
  if (st1.b03 == 3)
      printf("***** 03 ***** O   K *****\n");
  else
      printf("***** 03 ***** N   G *****\n");
  if (st1.b04 == 4)
      printf("***** 04 ***** O   K *****\n");
  else
      printf("***** 04 ***** N   G *****\n");
  if (st1.b05 == 5)
      printf("***** 05 ***** O   K *****\n");
  else
      printf("***** 05 ***** N   G *****\n");
  if (st1.b06 == 6)
      printf("***** 06 ***** O   K *****\n");
  else
      printf("***** 06 ***** N   G *****\n");
  if (st1.b07 == 7)
      printf("***** 07 ***** O   K *****\n");
  else
      printf("***** 07 ***** N   G *****\n");
  if (st1.b08 == 8)
      printf("***** 08 ***** O   K *****\n");
  else
      printf("***** 08 ***** N   G *****\n");
  if (st1.b09 == 9)
      printf("***** 09 ***** O   K *****\n");
  else
      printf("***** 09 ***** N   G *****\n");
  if (st1.b10 == 1)
      printf("***** 10 ***** O   K *****\n");
  else
      printf("***** 10 ***** N   G *****\n");
  if (st1.b11 == 2)
      printf("***** 11 ***** O   K *****\n");
  else
      printf("***** 11 ***** N   G *****\n");
  if (st1.b12 == 3)
      printf("***** 12 ***** O   K *****\n");
  else
      printf("***** 12 ***** N   G *****\n");
  if (st1.b13 == 4)
      printf("***** 13 ***** O   K *****\n");
  else
      printf("***** 13 ***** N   G *****\n");
  if (st1.b14 == 5)
      printf("***** 14 ***** O   K *****\n");
  else
      printf("***** 14 ***** N   G *****\n");
  if (st1.b15 == 6)
      printf("***** 15 ***** O   K *****\n");
  else
      printf("***** 15 ***** N   G *****\n");
  if (st1.b16 == 7)
      printf("***** 16 ***** O   K *****\n");
  else
      printf("***** 16 ***** N   G *****\n");
  if (st1.b17 == 8)
      printf("***** 17 ***** O   K *****\n");
  else
      printf("***** 17 ***** N   G *****\n");
  if (st1.b18 == 9)
      printf("***** 18 ***** O   K *****\n");
  else
      printf("***** 18 ***** N   G *****\n");


  sc  = 1 ;
  ssi = 1 ;
  si  = 1 ;
  sli = 1 ;
  uc  = 1 ;
  usi = 1 ;
  ui  = 1 ;
  uli = 1 ;

  /* bit <- var */
  st2.b01 = ssi ; /* <  */
  st2.b03 = sc  ; /* == */
  st2.b04 = si  ; /* <  */
  st2.b05 = sc  ; /* >  */
  st2.b06 = ssi ; /* == */
  st2.b07 = sli ; /* <  */
  st2.b08 = ssi ; /* >  */
  st2.b09 = si  ; /* == */
  st2.b10 = usi ; /* <  */
  st2.b12 = uc  ; /* == */
  st2.b13 = ui  ; /* <  */
  st2.b14 = uc  ; /* >  */
  st2.b15 = usi ; /* == */
  st2.b16 = uli ; /* <  */
  st2.b17 = usi ; /* >  */
  st2.b18 = ui  ; /* == */

  if (st2.b01 == -1)
      printf("***** 19 ***** O   K *****\n");
  else
      printf("***** 19 ***** N   G *****\n");
  if (st2.b03 == 1)
      printf("***** 20 ***** O   K *****\n");
  else
      printf("***** 20 ***** N   G *****\n");
  if (st2.b04 == 1)
      printf("***** 21 ***** O   K *****\n");
  else
      printf("***** 21 ***** N   G *****\n");
  if (st2.b05 == 1)
      printf("***** 22 ***** O   K *****\n");
  else
      printf("***** 22 ***** N   G *****\n");
  if (st2.b06 == 1)
      printf("***** 23 ***** O   K *****\n");
  else
      printf("***** 23 ***** N   G *****\n");
  if (st2.b07 == 1)
      printf("***** 24 ***** O   K *****\n");
  else
      printf("***** 24 ***** N   G *****\n");
  if (st2.b08 == 1)
      printf("***** 25 ***** O   K *****\n");
  else
      printf("***** 25 ***** N   G *****\n");
  if (st2.b09 == 1)
      printf("***** 26 ***** O   K *****\n");
  else
      printf("***** 26 ***** N   G *****\n");
  if (st2.b10 == 1)
      printf("***** 27 ***** O   K *****\n");
  else
      printf("***** 27 ***** N   G *****\n");
  if (st2.b12 == 1)
      printf("***** 28 ***** O   K *****\n");
  else
      printf("***** 28 ***** N   G *****\n");
  if (st2.b13 == 1)
      printf("***** 29 ***** O   K *****\n");
  else
      printf("***** 29 ***** N   G *****\n");
  if (st2.b14 == 1)
      printf("***** 30 ***** O   K *****\n");
  else
      printf("***** 30 ***** N   G *****\n");
  if (st2.b15 == 1)
      printf("***** 31 ***** O   K *****\n");
  else
      printf("***** 31 ***** N   G *****\n");
  if (st2.b16 == 1)
      printf("***** 32 ***** O   K *****\n");
  else
      printf("***** 32 ***** N   G *****\n");
  if (st2.b17 == 1)
      printf("***** 33 ***** O   K *****\n");
  else
      printf("***** 33 ***** N   G *****\n");
  if (st2.b18 == 1)
      printf("***** 34 ***** O   K *****\n");
  else
      printf("***** 34 ***** N   G *****\n");


  /* var <- bit && var-size == bit-size */
  sc  = st1.b03 ;
  ssi = st1.b06 ;
  si  = st1.b09 ;
  uc  = st1.b12 ;
  usi = st1.b15 ;
  ui  = st1.b18 ;

  if (sc == 3)
      printf("***** 35 ***** O   K *****\n");
  else
      printf("***** 35 ***** N   G *****\n");
  if (ssi == 6)
      printf("***** 36 ***** O   K *****\n");
  else
      printf("***** 36 ***** N   G *****\n");
  if (si == 9)
      printf("***** 37 ***** O   K *****\n");
  else
      printf("***** 37 ***** N   G *****\n");
  if (uc == 3)
      printf("***** 38 ***** O   K *****\n");
  else
      printf("***** 38 ***** N   G *****\n");
  if (usi == 6)
      printf("***** 39 ***** O   K *****\n");
  else
      printf("***** 39 ***** N   G *****\n");
  if (ui == 9)
      printf("***** 40 ***** O   K *****\n");
  else
      printf("***** 40 ***** N   G *****\n");

  /* bit <- number */
  stp = &st1 ;
  stp->b01 = 1 ;
  stp->b02 = 2 ;
  stp->b03 = 3 ;
  stp->b04 = 4 ;
  stp->b05 = 5 ;
  stp->b06 = 6 ;
  stp->b07 = 7 ;
  stp->b08 = 8 ;
  stp->b09 = 9 ;
  stp->b10 = 1 ;
  stp->b11 = 2 ;
  stp->b12 = 3 ;
  stp->b13 = 4 ;
  stp->b14 = 5 ;
  stp->b15 = 6 ;
  stp->b16 = 7 ;
  stp->b17 = 8 ;
  stp->b18 = 9 ;

  if (stp->b01 != -1)
      printf("***** 41 ***** N   G *****\n");
  else
      printf("***** 41 ***** O   K *****\n");
  if (stp->b02 != -2)
      printf("***** 42 ***** N   G *****\n");
  else
      printf("***** 42 ***** O   K *****\n");
  if (stp->b03 != 3)
      printf("***** 43 ***** N   G *****\n");
  else
      printf("***** 43 ***** O   K *****\n");
  if (stp->b04 != 4)
      printf("***** 44 ***** N   G *****\n");
  else
      printf("***** 44 ***** O   K *****\n");
  if (stp->b05 != 5)
      printf("***** 45 ***** N   G *****\n");
  else
      printf("***** 45 ***** O   K *****\n");
  if (stp->b06 != 6)
      printf("***** 46 ***** N   G *****\n");
  else
      printf("***** 46 ***** O   K *****\n");
  if (stp->b07 != 7)
      printf("***** 47 ***** N   G *****\n");
  else
      printf("***** 47 ***** O   K *****\n");
  if (stp->b08 != 8)
      printf("***** 48 ***** N   G *****\n");
  else
      printf("***** 48 ***** O   K *****\n");
  if (stp->b09 != 9)
      printf("***** 49 ***** N   G *****\n");
  else
      printf("***** 49 ***** O   K *****\n");
  if (stp->b10 != 1)
      printf("***** 50 ***** N   G *****\n");
  else
      printf("***** 50 ***** O   K *****\n");
  if (stp->b11 != 2)
      printf("***** 51 ***** N   G *****\n");
  else
      printf("***** 51 ***** O   K *****\n");
  if (stp->b12 != 3)
      printf("***** 52 ***** N   G *****\n");
  else
      printf("***** 52 ***** O   K *****\n");
  if (stp->b13 != 4)
      printf("***** 53 ***** N   G *****\n");
  else
      printf("***** 53 ***** O   K *****\n");
  if (stp->b14 != 5)
      printf("***** 54 ***** N   G *****\n");
  else
      printf("***** 54 ***** O   K *****\n");
  if (stp->b15 != 6)
      printf("***** 55 ***** N   G *****\n");
  else
      printf("***** 55 ***** O   K *****\n");
  if (stp->b16 != 7)
      printf("***** 56 ***** N   G *****\n");
  else
      printf("***** 56 ***** O   K *****\n");
  if (stp->b17 != 8)
      printf("***** 57 ***** N   G *****\n");
  else
      printf("***** 57 ***** O   K *****\n");
  if (stp->b18 != 9)
      printf("***** 58 ***** N   G *****\n");
  else
      printf("***** 58 ***** O   K *****\n");

  printf("********** TEST  END  **********\n");

}
