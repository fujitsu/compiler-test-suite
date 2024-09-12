         REAL*4 R1A(100),R1B(100)
         REAL*4 R2A(100),R2B(100)
         REAL*4 R3A(100),R3B(100)
         REAL*4 R4A(100),R4B(100)
         CALL SUB1(R1A,R1B)
         CALL SUB2(R2A,R2B)
         CALL SUB3(R3A,R3B)
         CALL SUB4(R4A,R4B)

         WRITE(6,*) R1A,R1B
         WRITE(6,*) R2A,R2B
         WRITE(6,*) R3A,R3B
         WRITE(6,*) R4A,R4B
         STOP
         END


         SUBROUTINE SUB1(RA,RB)
         REAL*4 RA(100),RB(100)
         DO 100 I=1,100
100        RA(I)=I
         DO 200 I=1,100
200        RB(I)=I+1.0
         RETURN
         END


         SUBROUTINE SUB2(RA,RB)
         REAL*4 RA(100),RB(100)
         DO 100 I=1,100
100        RA(I)=I
         DO 200 I=1,100
           RB(I)=I+1.0
           IF(I.GT.50) RB(I)=I
200      CONTINUE
         RETURN
         END


         SUBROUTINE SUB3(RA,RB)
         REAL*4 RA(100),RB(100)
         DO 100 I=1,100
           RA(I)=I
           IF(I.GT.20) RA(I)=2.0
100      CONTINUE
         DO 200 I=1,100
200        RB(I)=I+1.0
         RETURN
         END


         SUBROUTINE SUB4(RA,RB)
         REAL*4 RA(100),RB(100)
         DO 100 I=1,100
           IF(I.GT.50) THEN
             RA(I)=I
           ELSE
             RA(I)=I+2.0
           ENDIF
100      CONTINUE
         DO 200 I=1,100
           RB(I)=(1.0+I)
           IF(I.GT.50) THEN
             RA(I)=(I+1.0)
           ELSE
             RA(I)=I+2.0
           ENDIF
200      CONTINUE
         RETURN
         END
