       REAL BBB(50),CCC(50),DDD(50)
       DATA BBB/10*1.,10*2.,10*3.,10*4.,10*5./
       DATA CCC/10*1.,10*2.,10*3.,10*4.,10*5./
       DATA DDD/10*1.,10*2.,10*3.,10*4.,10*5./

       REAL A10(50),A11(50),A12(50),A13(50)
       REAL X10(50)
       DATA A10/10*4.,10*5.,10*6.,10*7.,10*8./
       DATA A11/50*0/
       DATA A12/10*2.,10*3.,10*4.,10*5.,10*6./
       DATA A13/10*1.,10*2.,10*3.,10*4.,10*5./

       DO 101 I = 1 , 50
         IF( I .LE. 50 ) THEN
            A10( I) = A10(I)  + CCC(I)
            A10( I) = A10(I)  + DDD(I)
            X10( I) = A11(I) - BBB(I)
            A11( I) = A12(50) + I + DDD(I)
            A12( I) = CCC( I) + DDD(I)
            A13( I) = CCC(I) + I
            A13( I) = A13( I) + CCC(I) - DDD(I) + A13(I)
         ENDIF
 101   CONTINUE
       PRINT *,A10,A11,A12,A13
       END
