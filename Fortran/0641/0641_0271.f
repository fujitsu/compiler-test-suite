      PROGRAM MAIN

       INTEGER*4 L10(10), L11(10), L12(10), L13(10), L14(10), L15(10), 
     X   L16(10), L17(10), L18(10), L19(10), L20(10)
       INTEGER*4 I10(10), I11(10)

       DATA L11/1,-2,3,4,-5,6,-7,-8,9,0/ 
       DATA L12/0,1,0,0,-2,0,0,-3,4,5/ 
       DATA L14/0,6,0,-7,8,9,0,-100,0,10/ 
       DATA L17/11,0,111111111,0,0,888881,0,-21,0,0/ 
       DATA I10/1,0,1,0,2,3,4,0,-1,3/ 
       DATA I11/0,1,-1,0,2,0,4,0,-1,4/ 

       INTEGER*4 L21(10), L22(10), L23(10)
       INTEGER*4 I22(10), I20(10), I21(10)
       INTEGER*4 I23(10)

       DATA I22/1,0,Z'FFFEFEFF',4,0,Z'FFFFFFFF',0,8,-9,0/ 

       INTEGER*4 L30(10), L31(10), L32(10)
       INTEGER*4 I30(10), I31(10), I32(10), I33(10), I34(10), I35(10), 
     X   I36(10)
       INTEGER I30V, L30V, I20V, I21V, L12V, L11V, L10V, N
       PARAMETER (I30V = 2, L30V = 1234, I20V = 3, I21V = -123, L12V = 3
     X   )
       PARAMETER (L11V = 2, L10V = 1, N = 10)

       DATA I30/-1,2,0,-4,5,-6,7,8,-9,10/ 
       DATA I31/1,-2,0,-1,2,-3,3,2,1,1/ 
       DATA I34/1,-3,7,-2,-9,3,0,1,6,1/ 
       DATA I35/1,0,-3,4,5,-4,-3,2,1,0/ 
       INTEGER II37, II36, II35, II34, II33, II32, II31, II30, II29, 
     X   II28, II27, II26, II25, II24, II23, II22, II21, II20, II19, 
     X   II18, II17, II16, II15, II14, II13, II12, II11, II10, II9, II8
     X   , II7, II6, II5, II4, II3, II2, II1

       DO I=1,6,5
        L10(I) = 0
        L10(I+1) = 0
        L10(I+2) = 0
        L10(I+3) = 0
        L10(I+4) = 0
        II3 = IAND (1, L11(I))
        II4 = IAND (1, L11(I+1))
        II5 = IAND (1, L11(I+2))
        II6 = IAND (1, L11(I+3))
        II7 = IAND (1, L11(I+4))
        II8 = IAND (II3, 3)
        II9 = IAND (II4, 3)
        II10 = IAND (II5, 3)
        II11 = IAND (II6, 3)
        II12 = IAND (II7, 3)
        II13 = IAND (II8, L14(I))
        II14 = IAND (II9, L14(I+1))
        II15 = IAND (II10, L14(I+2))
        II16 = IAND (II11, L14(I+3))
        II17 = IAND (II12, L14(I+4))
        L16(I) = IOR (II13, I10(I))
        L16(I+1) = IOR (II14, I10(I+1))
        L16(I+2) = IOR (II15, I10(I+2))
        L16(I+3) = IOR (II16, I10(I+3))
        L16(I+4) = IOR (II17, I10(I+4))
        L18(I) = IOR (I11(I), L17(I))
        L18(I+1) = IOR (I11(I+1), L17(I+1))
        L18(I+2) = IOR (I11(I+2), L17(I+2))
        L18(I+3) = IOR (I11(I+3), L17(I+3))
        L18(I+4) = IOR (I11(I+4), L17(I+4))
        L19(I) = IOR (I10(I), I11(I))
        L19(I+1) = IOR (I10(I+1), I11(I+1))
        L19(I+2) = IOR (I10(I+2), I11(I+2))
        L19(I+3) = IOR (I10(I+3), I11(I+3))
        L19(I+4) = IOR (I10(I+4), I11(I+4))
        L15(I+4) = II17
        L15(I+3) = II16
        L15(I+2) = II15
        L15(I+1) = II14
        L15(I) = II13
        L13(I+4) = II12
        L13(I+3) = II11
        L13(I+2) = II10
        L13(I+1) = II9
        L13(I) = II8
        L12(I+4) = II7
        L12(I+3) = II6
        L12(I+2) = II5
        L12(I+1) = II4
        L12(I) = II3
       END DO
       WRITE (6, *) 'L10 = ', L10
       WRITE (6, *) 'L12 = ', L12
       WRITE (6, *) 'L13 = ', L13
       WRITE (6, *) 'L15 = ', L15
       WRITE (6, *) 'L16 = ', L16
       WRITE (6, *) 'L17 = ', L17
       WRITE (6, *) 'L18 = ', L18
       WRITE (6, *) 'L19 = ', L19

       DO I=1,6,5
        L21(I) = -4
        L21(I+1) = -4
        L21(I+2) = -4
        L21(I+3) = -4
        L21(I+4) = -4
        II18 = NOT (I22(I))
        II19 = NOT (I22(I+1))
        II20 = NOT (I22(I+2))
        II21 = NOT (I22(I+3))
        II22 = NOT (I22(I+4))
        II23 = NOT (II18)
        II24 = NOT (II19)
        II25 = NOT (II20)
        II26 = NOT (II21)
        II27 = NOT (II22)
        I20(I) = NOT (I22(I))
        I20(I+1) = NOT (I22(I+1))
        I20(I+2) = NOT (I22(I+2))
        I20(I+3) = NOT (I22(I+3))
        I20(I+4) = NOT (I22(I+4))
        I21(I) = 122
        I21(I+1) = 122
        I21(I+2) = 122
        I21(I+3) = 122
        I21(I+4) = 122
        I23(I) = NOT (II23)
        I23(I+1) = NOT (II24)
        I23(I+2) = NOT (II25)
        I23(I+3) = NOT (II26)
        I23(I+4) = NOT (II27)
        L23(I+4) = II27
        L23(I+3) = II26
        L23(I+2) = II25
        L23(I+1) = II24
        L23(I) = II23
        L22(I+4) = II22
        L22(I+3) = II21
        L22(I+2) = II20
        L22(I+1) = II19
        L22(I) = II18
       END DO
       WRITE (6, *) 'L21 = ', L21
       WRITE (6, *) 'L22 = ', L22
       WRITE (6, *) 'L23 = ', L23
       WRITE (6, *) 'I20 = ', I20
       WRITE (6, *) 'I21 = ', I21
       WRITE (6, *) 'I23 = ', I23

       II1 = ISHFT (1234, 3)
       II2 = ISHFT (2, 1)
       DO I=1,6,5
        II28 = II1
        II29 = II1
        II30 = II1
        II31 = II1
        II32 = II1
        L31(I) = ISHFT (II28, -2)
        L31(I+1) = ISHFT (II29, -2)
        L31(I+2) = ISHFT (II30, -2)
        L31(I+3) = ISHFT (II31, -2)
        L31(I+4) = ISHFT (II32, -2)
        I32(I) = ISHFT (I30(I), -4)
        I32(I+1) = ISHFT (I30(I+1), -4)
        I32(I+2) = ISHFT (I30(I+2), -4)
        I32(I+3) = ISHFT (I30(I+3), -4)
        I32(I+4) = ISHFT (I30(I+4), -4)
        I33(I) = ISHFT (I31(I), 1)
        I33(I+1) = ISHFT (I31(I+1), 1)
        I33(I+2) = ISHFT (I31(I+2), 1)
        I33(I+3) = ISHFT (I31(I+3), 1)
        I33(I+4) = ISHFT (I31(I+4), 1)
        II33 = ISHFT (I35(I), -3)
        II34 = ISHFT (I35(I+1), -3)
        II35 = ISHFT (I35(I+2), -3)
        II36 = ISHFT (I35(I+3), -3)
        II37 = ISHFT (I35(I+4), -3)
        I36(I) = II2
        I36(I+1) = II2
        I36(I+2) = II2
        I36(I+3) = II2
        I36(I+4) = II2
        I35(I+4) = II37
        I35(I+3) = II36
        I35(I+2) = II35
        I35(I+1) = II34
        I35(I) = II33
        L30(I+4) = II32
        L30(I+3) = II31
        L30(I+2) = II30
        L30(I+1) = II29
        L30(I) = II28
       END DO
       WRITE (6, *) 'L30 = ', L30
       WRITE (6, *) 'L31 = ', L31
       WRITE (6, *) 'I32 = ', I32
       WRITE (6, *) 'I33 = ', I33
       WRITE (6, *) 'I35 = ', I35
       WRITE (6, *) 'I36 = ', I36
       STOP 
      END
