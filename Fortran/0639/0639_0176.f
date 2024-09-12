        REAL*8 B(10),C(10),Z(10)
        REAL*8 E(10),F(10),G(10)
        REAL*8 A(10)
        DATA E,F,G/30*1.0/
        DATA   A/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
        DATA   B/10.D0,9.D0,8.D0,7.D0,6.D0,5.D0,4.D0,3.D0,2.D0,1.D0/
        DATA   C/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
        DATA   Z/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
        LOGICAL L(12),LSW
      DATA L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     E       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
        COMPLEX*8 R1(10),R2(10)
        REAL*8 D1(10),D2(10)
        DATA   R1/(1.,2.),(3.,4.),(5.,6.),(7.,8.),(9.,10.),
     E            (1.,2.),(3.,4.),(5.,6.),(7.,8.),(9.,10.)/
        DATA   R2/(1.,2.),(3.,4.),(5.,6.),(7.,8.),(9.,10.),
     E            (1.,2.),(3.,4.),(5.,6.),(7.,8.),(9.,10.)/
        DATA   D1/10.D0,9.D0,8.D0,7.D0,6.D0,5.D0,4.D0,3.D0,2.D0,1.D0/
        DATA   D2/10.D0,9.D0,8.D0,7.D0,6.D0,5.D0,4.D0,3.D0,2.D0,1.D0/

          DO 10 J = 1 , 10
          DO 10 I = 1 , 10
            LSW = A(I) .GE. B(I)
            S = C(I) - B(I) - 2.0
              IF( LSW ) A(I) = C(I) + B(I)
              IF( L(J) ) Z(I) = S - A(I)
              IF( LSW ) S = C(I) + B(I)
              IF( L(J) ) S = S + R2(I)
              IF( LSW ) E(I) = C(I) + B(I)
              IF( L(J) ) F(I) = S - A(I)
              IF( LSW ) G(I) = C(I) + B(I)
              IF( L(J) ) S = S + R2(I)
              Z(I) = S - C(I)
 10       CONTINUE

          PRINT *,Z
          END
