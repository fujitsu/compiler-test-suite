        REAL   A(10),B(10),C(10),Z(10)
        DATA   A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA   B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA   C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA   Z/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        LOGICAL L(10),LL(10),LSW
        DATA L/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
        DATA LL/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
        REAL*4 R1(10),R2(10)
        REAL*8 D1(10),D2(10)
        DATA   R1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA   R2/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA   D1/10.D0,9.D0,8.D0,7.D0,6.D0,5.D0,4.D0,3.D0,2.D0,1.D0/
        DATA   D2/10.D0,9.D0,8.D0,7.D0,6.D0,5.D0,4.D0,3.D0,2.D0,1.D0/

          DO 10 J = 1 , 10
          DO 10 I = 1 , 10
            LSW = A(I) .GE. B(I)
              IF( LSW ) R1(I) = A(I) + B(I)
              Z(I) = R1(I) - A(I)
              IF( LSW ) D1(I) = A(I) + B(I)
              A(I) = Z(I) - D1(I)
              IF( LSW ) R2(I) = C(I) - A(I)
              IF( L(J) ) THEN
                   Z(I) = R1(I) + R2(I)
                 ELSE
                   Z(I) = D1(I) + D2(I)
              ENDIF
              IF( LSW ) D2(I) = C(I) - A(I)
              C(I) = Z(I) - D2(I)
 10       CONTINUE

          PRINT *,Z
          END
