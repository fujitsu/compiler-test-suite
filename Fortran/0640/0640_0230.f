      PROGRAM MAIN
      REAL A(11,10)/110*0.0/,B(11,10)/110*-1/
      DO 10 J=1,11
       DO 10 K=1,10
         IF(B(J,K).EQ.0) GOTO 11
           B(J,K)=1.5
  11     A(J,K)=1.5
  10  CONTINUE

      WRITE(6,*)   K,A,B
      DO 21 J=1,11
       DO 20 K=1,10
  20     A(J,K)=3.0
  21  CONTINUE
      WRITE(6,*)   K,A,B
      DO 31 J=1,11
       DO 30 K=1,9
  30     IF(B(J,K).EQ.1.5) B(J,K)=B(J,K)*3.
  31     A(J,K)=4.0
      WRITE(6,*)   K,A,B
      END
