      PROGRAM MAIN
      INTEGER B(100),A(100)
      DATA B/100*0/,M/0/
C
      DO 5 I=100,1,-1
        A(I)=I
    5 CONTINUE
      DO 10 J=1,100
        IF (J.LE.50) THEN
          I=I+1
          M=SUN(A(I))
          B(J)=M
        ELSE
          B(J)=J+B(J)
        ENDIF
        I=100-I
   10 CONTINUE
C
      
      WRITE (6,*) B
      STOP
      END
C
      FUNCTION SUN(K)
      SUN=0
      DO 20 L=K,1,-1
        SUN=SUN+L
   20 CONTINUE
      END
