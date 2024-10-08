      INTEGER*2              I02S11, I02S21, I02S31, I02S41,
     +                       I02S51, I02S61, I02S71, I02S81
      INTEGER*4              I04S11, I04S21, I04S31, I04S41,
     +                       I04S51, I04S61, I04S71, I04S81
      REAL*4                 R04S12, R04S22, R04S32, R04S42,
     +                       R04S52, R04S62, R04S72, R04S82
      REAL*8                 R08S12, R08S22, R08S32, R08S42,
     +                       R08S52, R08S62, R08S72, R08S82
      REAL*16                R16S12, R16S22, R16S32, R16S42,
     +                       R16S52, R16S62, R16S72, R16S82
      COMPLEX*8              C08S13, C08S23, C08S33, C08S43,
     +                       C08S53, C08S63, C08S73, C08S83
      COMPLEX*16             C16S13, C16S23, C16S33, C16S43,
     +                       C16S53, C16S63, C16S73, C16S83
      COMPLEX*32             C32S13, C32S23, C32S33, C32S43,
     +                       C32S53, C32S63, C32S73, C32S83

      NAMELIST     /NAML01/  I02S11, I02S21, I02S31, I02S41,
     +                       I02S51, I02S61, I02S71, I02S81,
     +                       I04S11, I04S21, I04S31, I04S41,
     +                       I04S51, I04S61, I04S71, I04S81
      NAMELIST     /NAML02/  R04S12, R04S22, R04S32, R04S42,
     +                       R04S52, R04S62, R04S72, R04S82,
     +                       R08S12, R08S22, R08S32, R08S42,
     +                       R08S52, R08S62, R08S72, R08S82,
     +                       R16S12, R16S22, R16S32, R16S42,
     +                       R16S52, R16S62, R16S72, R16S82
      NAMELIST     /NAML03/  C08S13, C08S23, C08S33, C08S43,
     +                       C08S53, C08S63, C08S73, C08S83,
     +                       C16S13, C16S23, C16S33, C16S43,
     +                       C16S53, C16S63, C16S73, C16S83,
     +                       C32S13, C32S23, C32S33, C32S43,
     +                       C32S53, C32S63, C32S73, C32S83
      NAMELIST     /NAML04/  I02S11, I02S21, I02S31, I02S41,
     +                       I02S51, I02S61, I02S71, I02S81,
     +                       I04S11, I04S21, I04S31, I04S41,
     +                       I04S51, I04S61, I04S71, I04S81,
     +                       R04S12, R04S22, R04S32, R04S42,
     +                       R04S52, R04S62, R04S72, R04S82,
     +                       R08S12, R08S22, R08S32, R08S42,
     +                       R08S52, R08S62, R08S72, R08S82,
     +                       R16S12, R16S22, R16S32, R16S42,
     +                       R16S52, R16S62, R16S72, R16S82,
     +                       C08S13, C08S23, C08S33, C08S43,
     +                       C08S53, C08S63, C08S73, C08S83,
     +                       C16S13, C16S23, C16S33, C16S43,
     +                       C16S53, C16S63, C16S73, C16S83,
     +                       C32S13, C32S23, C32S33, C32S43,
     +                       C32S53, C32S63, C32S73, C32S83

      WRITE(6,2000)
 2000    FORMAT(//1X,20(1H*),' FIRST  RESULT ',20(1H*)/)

         I02S11    =    1
         I04S11    =    12
         I02S21    =    2
         I04S21    =    23
         I02S31    =    I02S11    **   3
         I04S31    =    I04S11    -    34
         I02S41    =    4         *    I02S21
         I04S41    =    45        /    I04S21
         I02S51    =    I02S11    +    I02S21
         I04S51    =    I04S11    -    I04S21
         I02S61    =    I02S31    *    I02S41
         I04S61    =    I04S31    /    I04S41
         I02S71    =    I02S41    +    I02S51    -    I02S61
         I04S71    =    I04S41    *    I04S51    /    I02S61
         I02S81    =   (I02S31 + I02S51)    -   (I02S41 * I02S61)
         I04S81    =   (I04S31 / I04S51)    +   (I04S41 - I04S61)

      WRITE(6,NAML01)
      WRITE(6,3000)
 3000    FORMAT(//1X,20(1H*),' SECOND RESULT ',20(1H*)/)

         R04S12    =    1.
         R08S12    =    12.
         R16S12    =    123.
         R04S22    =    2.
         R08S22    =    23.
         R16S22    =    234.
         R04S32    =    R04S12    **   3.
         R08S32    =    R08S12    -    34.
         R16S32    =    R16S12    *    345.
         R04S42    =    4.        /    R04S22
         R08S42    =    45.       +    R08S22
         R16S42    =    456.      -    R16S22
         R04S52    =    R04S12    *    R04S22
         R08S52    =    R08S12    /    R08S22
         R16S52    =    R16S12    +    R16S22
         R04S62    =    R04S32    -    R04S42
         R08S62    =    R08S32    *    R08S42
         R16S62    =    R16S32    /    R16S42
         R04S72    =    R04S42    +    R04S52    **   R04S62
         R08S72    =    R08S42    -    R08S52    +    R08S62
         R16S72    =    R16S42    *    R16S52    /    R16S62
         R04S82    =   (R04S32 + R04S52)    *   (R04S42 - R04S62)
         R08S82    =   (R08S32 - R08S52)    +   (R08S42 + R08S62)
         R16S82    =   (R08S32 * R16S52)    /   (R16S42 / R16S62)

      WRITE(6,NAML02)
      WRITE(6,4000)
 4000    FORMAT(//1X,20(1H*),' THIRD  RESULT ',20(1H*)/)

         C08S13    =   (1.,2.)
         C16S13    =   (12.,34.)
         C32S13    =   (123.,456.)
         C08S23    =   (2.,3.)
         C16S23    =   (23.,45.)
         C32S23    =   (234.,567.)
         C08S33    =    C08S13    +   (3.,4.)
         C16S33    =    C16S13    *   (34.,56.)
         C32S33    =    C32S13    -   (345.,678.)
         C08S43    =   (4.,5.)    +    C08S23
         C16S43    =   (45.,67.)  *    C16S23
         C32S43    =   (456.,789.)-    C32S23
         C08S53    =    C08S13    +    C08S23
         C16S53    =    C16S13    *    C16S23
         C32S53    =    C32S13    -    C32S23
         C08S63    =    C08S33    +    C08S43
         C16S63    =    C16S33    -    C16S43
         C32S63    =    C32S33    *    C32S43
         C08S73    =    C08S43    +    C08S53    -    C08S63
         C16S73    =    C16S43    *    C16S53    -    C16S63
         C32S73    =    C32S43    *    C32S53    /    C32S63
         C08S83    =   (C08S33 / C08S53)    +   (C08S43 - C08S63)
         C16S83    =   (C16S33 - C16S53)    *   (C16S43 / C16S63)
         C32S83    =   (C32S33 * C32S53)    +   (C32S43 - C32S63)

      WRITE(6,NAML03)
      WRITE(6,5000)
 5000    FORMAT(//1X,20(1H*),' FORTH  RESULT ',20(1H*)/)

         I02S11    =    1
         I04S11    =    12
         R04S12    =    1.2
         R08S12    =    12.3
         R16S12    =    123.4
         C08S13    =   (1.2,3.4)
         C16S13    =   (12.3,45.6)
         C32S13    =   (123.4,567.8)

         I02S21    =    2
         I04S21    =    23
         R04S22    =    2.3
         R08S22    =    23.4
         R16S22    =    234.5
         C08S23    =   (2.3,4.5)
         C16S23    =   (23.4,56.7)
         C32S23    =   (234.5,678.9)

         I02S31    =    I04S11    **   3
         I04S31    =    R04S12    +    34
         R04S32    =    I02S11    -    3.4
         R08S32    =    R16S12    /    34.5
         C08S33    =    R08S12    +   (3.4,5.6)
         C16S33    =    C32S13    -   (34.5,67.8)
         C32S33    =    C08S13    /   (345.6,789.0)

         I02S41    =    4         **   R04S22
         I04S41    =    45        +    I02S21
         R04S42    =    4.5       -    I04S21
         R08S42    =    45.6      *    R16S22
         R16S42    =    456.7     /    C16S23
         C08S43    =   (4.5,6.7)  +    R08S22
         C16S43    =   (45.6,78.9)-    C32S23
         C32S43    =   (456.7,890.1)/  C08S23

         I02S51    =    I04S11    **   R04S22
         I04S51    =    R04S12    +    I02S21
         R04S52    =    I02S11    -    R08S22
         R08S52    =    R16S12    *    I04S21
         R16S52    =    C16S13    +    C08S23
         C08S53    =    C32S13    /    R16S22
         C16S53    =    R08S12    -    C32S23
         C32S53    =    C08S13    /    C16S23

         I02S61    =    I04S31    **   R04S42
         I04S61    =    R04S32    +    I02S41
         R04S62    =    I02S31    -    R08S42
         R08S62    =    R16S32    *    I04S41
         R16S62    =    C16S33    +    C08S43
         C08S63    =    C32S33    /    R16S42
         C16S63    =    R08S32    -    C32S43
         C32S63    =    C08S33    /    C16S43
         I02S71    =    I04S41    -    R04S52    /    I04S61
         I04S71    =    R04S42    *    I02S51    -    I02S61
         R04S72    =    I02S41    +    R08S52    -    R08S62
         R08S72    =    R16S42    *    I04S51    /    R16S62
         R16S72    =    C16S43    -    C08S53    *    R04S62
         C08S73    =    C32S43    -    R16S52    +    C16S63
         C16S73    =    R08S42    +    C32S53    /    C32S63
         C32S73    =    C08S43    *    C16S53    /    C08S63

         I02S81    =   (I04S31 - I04S51)    -   (R04S42 - I04S61)
         I04S81    =   (R04S32 - I02S51)    +   (I02S41 * I02S61)
         R04S82    =   (I02S31 * R08S52)    +   (R08S42 / R08S62)
         R08S82    =   (R16S32 / R16S52)    -   (I04S41 + R16S62)
         R16S82    =   (C16S33 * R04S52)    /   (C08S43 * R04S62)
         C08S83    =   (C32S33 + C16S53)    *   (R16S42 - C16S63)
         C16S83    =   (R08S32 * C32S53)    /   (C32S43 + C32S63)
         C32S83    =   (C08S33 - C08S53)    *   (C16S43 - C08S63)

      WRITE(6,NAML04)

      STOP
      END
