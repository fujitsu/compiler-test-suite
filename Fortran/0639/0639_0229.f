        REAL A(10),B(10),C(10),D(10)
        DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA D/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL X(10),Z(10)
        DATA Z/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL S/2.0/
        LOGICAL L(10),LL(10),LSW
        DATA L/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
        DATA LL/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
        REAL*4 R1(10),R2(10)
        REAL*8 D1(10),D2(10)
        DATA   R1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA   R2/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA   D1/10.D0,9.D0,8.D0,7.D0,6.D0,5.D0,4.D0,3.D0,2.D0,1.D0/
        DATA   D2/10.D0,9.D0,8.D0,7.D0,6.D0,5.D0,4.D0,3.D0,2.D0,1.D0/
        LOGICAL L1/.TRUE./,L2/.FALSE./


          DO 10 I = 1 , 10
            S = C(I) - B(I)
            X(I) = S - 1.0
            IF( I.LE.5) THEN
                A(I) = S + B(I)
              ELSE
                S = C(I) - B(I)
                X(I) = X(I) - S
            ENDIF
            IF( I.LE.5) Z(I) = S + B(I)
 10       CONTINUE
          PRINT *,Z ,X

          DO 30 J = 1 , 10
          DO 20 I = 1 , 10
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

              X1 = B(I) + C(I)
              A(I) = X1
              IF(L1) THEN
                X1 = B(I) - C(I)
                 IF(.NOT.L2) THEN
                  IF(I.GE.1) THEN
                   A(I) = A(I) + X1
                  ENDIF
                 ENDIF
               ENDIF
 20       CONTINUE

      DO 30 I=1,10
        X1   = D(I) + C(I)
        A(I) = X1
        B(I) = X1   + D(I)
        Y1 = 1.
        IF(I.GT.5) THEN
          Y1 = A(I)
          C(I) = Y1 + X1
          X1   = B(I) + C(I)
          A(I) = X1 + Y1
        ENDIF
 30       CONTINUE
      PRINT *,X,A,B

          END
