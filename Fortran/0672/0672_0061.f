         COMPLEX        C1 , C2 , C3 , C4
         NAMELIST  /NAMEL/ A  , B  , C  , D  , E  ,
     *                     B1 , B2 , B3 , B4 ,
     *                     C1 , C2 , C3 , C4 ,
     *                     D1 , D2 , D3 , D4 , ISW2

         WRITE(6,1000)
 1000         FORMAT(1H1,' S P E C I A L    C A S E  (02)')

    1 CONTINUE
         A  =  5.0
         B  =  4.0
         C  =  3.0
         D  =  2.0
         E  =  1.0
         B1 =  5.0
         B2 =  5.0
         B3 =  5.0
         B4 =  5.0
         C1 =  (1.5 , 2.5)
         C2 =  (1.5 , 2.5)
         C3 =  (1.5 , 2.5)
         C4 =  (1.5 , 2.5)
         ISW2 = 1
         GO TO 6
    2 CONTINUE
         A  =  1.0
         B  =  1.0
         ISW2 = 0
         C1 =  CMPLX(A + B , A + B - A)
         C2 =  CMPLX(A + B + A , A)
         IF(ISW2 .EQ. 0) GO TO 4
    3 CONTINUE
         C3 =  C1 * C2
         B1 =  SQRT(A * B)
         B2 =  REAL(C1 * C3 + C2)
         GO TO 5
    4 CONTINUE
         C4 =  C1 / C2
         B1 =  SQRT(A * B)
         D3 =  A * B + A
    5 CONTINUE
         C3 =  C1 * A + B
         C4 =  C2 * C1 / A * B
         B2 =  B1 * B
         B3 =  REAL(C1 * C3 + C2)
    6 CONTINUE
         D1 =  A * B + A * D
         D2 =  C / D + E - B
         D3 =  A * B + A
         D4 =  A + B + C * D / E
         B4 =  A * B / C
    7 CONTINUE
         WRITE(6,NAMEL)
         STOP
         END
