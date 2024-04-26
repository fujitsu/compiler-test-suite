       REAL*8 A(20)
       DO 150 I=1,20
         IF( I. GT. 10 ) THEN
             A(I)=I
           ELSE
             A(I)=50-I
         ENDIF
150    CONTINUE
       PRINT *,A
       STOP
       END
