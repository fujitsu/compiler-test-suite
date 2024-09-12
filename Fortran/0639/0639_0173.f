        REAL   B(10),C(10),X(10)
        REAL*8 A(10)
        DATA   A/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
        DATA   B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA   C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA   X/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
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
            S = C(I) - B(I) - 1.0
              IF( LSW ) A(I) = C(I) + B(I)
              IF( LSW ) D1(I) = C(I) + B(I)
              IF( LSW ) R2(I) = C(I) - A(I)
              IF( L(J) ) X(I) = S - A(I)
              IF( LSW ) S = C(I) - A(I)
              IF ( L(J) ) THEN
                 S = S + X(I)
               ELSE
                 S = S - X(I)
              ENDIF
              X(I) = S - C(I)
 10       CONTINUE

          PRINT *,X
          END
