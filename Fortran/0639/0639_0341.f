       REAL BBB(50),CCC(50),DDD(50)
       DATA BBB/10*1.,10*2.,10*3.,10*4.,10*5./
       DATA CCC/10*1.,10*2.,10*3.,10*4.,10*5./
       DATA DDD/10*1.,10*2.,10*3.,10*4.,10*5./

       REAL A10(50),A11(50),A12(50),A13(50)
       REAL A14(50),A15(50),A16(50)
       REAL X10(50),X11(50),X12(50),X13(50),X14(50)
       EQUIVALENCE (A12(1),A13(1))

       REAL A20(50),A21(50),A22(50)
       REAL A23(50),A24(50),A25(50)
       REAL X20(50),X21(50),X22(50),X23(50),X24(50)
       EQUIVALENCE (A22(1),A23(1)),(A24(1),A25(1))
       data a20,a21,a22,a24/200*0/


       REAL A30(50),A31(50),A32(50),A33(50)
       EQUIVALENCE (A31(1),A32(1))

       A10 = 0
       A14 = 0
       DO 101 I = 1 , 50
            A10(50) = I + 10
            X10( I) = A10(I)  + CCC(I)
            A11( I) = BBB(I)  + DDD(I)
            X11( I) = A11( 1) - CCC(I) + BBB(I)
            A12( I) = CCC( I) + I + DDD(I)
            X12( I) = A13( I) - DDD(I) + 1.0
            A14(50) = I       + I
            X13( I) = A14( I) + CCC(I) + A14(I) + DDD(I)
            A15( I) = DDD(I)
            A16( I) = I       + 3
            X14( I) = A15( I) + CCC(I) - DDD(I) + A16(I)
 101   CONTINUE
       PRINT *,X10,X11,X12,X13,X14

       DO 201 I = 1 , 50
         IF( I.LE.50 ) THEN
            X20( I) = A20( I) + BBB(I)
            A20( 1) = I       + 10.0
            X21( I) = A21( I)  + DDD(I)
            A21( I) = DDD( I)  + CCC(I) + I
            X22( I) = A22( I)  + CCC(I)
            A23( I) = X22( I)  + DDD(I)
            X23( I) = A24( I)  + BBB(I)
            X24( I) = A24( I)  + DDD(I)
            A25( I) = CCC( I)  - DDD(I)  + I
         ENDIF
 201   CONTINUE
       PRINT *,X20,X21,X22,X23,X24,A20,A21,A23,A25

       DO 301 I = 1 , 50
         IF( I.LE.50 ) THEN
            A30( I) = DDD( I)
            A30( I) = CCC( I) + DDD(I)
            A31( I) = CCC( I) + I +2
            A32( I) = BBB( I) - DDD( I) + CCC(I)
            A33(50) = I + 1
            A33( I) = BBB( I) * I
         ENDIF
 301   CONTINUE
       PRINT *,A30,A31,A32,A33
       END
