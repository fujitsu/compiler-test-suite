      NAMELIST      /NAMEL/ A  , B  , C  , D  , E  , F  ,
     *                      RK1, RK2, RK3, X  , Y  ,
     *                      I  , T  , ISW,
     *                      A1 , A3 , B1 , D3

      WRITE(6,1000)
 1000 FORMAT(1H1,' SPECIAL  CASE  (01) ')

    1 CONTINUE
         A     = 1.
         B     = 2.
         C     = 3.
         D     = 4.
         E     = 5.
         F     = 6.
         RK1   = 10.
         RK2   = 20.
         RK3   = 30.
         X     = 1.
         Y     = 2.
         I     = 1
         T     = 2
         ISW   = 0
         A1    = 1.
         A3    = 2.
         B1    = 3.
         D3    = 4.
         GO TO 3
    2 CONTINUE
         T     = I * 10
         E     = B * C
         X     = SIN(B)
         D3    = SQRT(A3)
         A1    = 5.
         ISW   = ISW + 1
    3 CONTINUE
         RK1   = RK2
         RK3   = RK1
         A     = B * C
         F     = B * C + D
         A1    = B1 + 1.
         I     = I + 1
    4 CONTINUE
         RK3   = RK1
         D     = B * C
         Y     = COS(B)
         D3    = SQRT(A3)
         X     = A1
         IF (ISW .EQ. 0) GO TO 2
    5 CONTINUE
         A     = 4. * 5.
         B     = 2. + 3.
         C     = 3. - 1.
         D     = 10. / 2.
         E     = A / B + 2.
         F     = A / D + C
         WRITE(6,NAMEL)

      STOP
      END
