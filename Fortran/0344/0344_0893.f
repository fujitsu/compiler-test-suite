      INTEGER NG(10000)/10000*0/
      REAL A(10000)/10000*0./
      REAL B(10000)/10000*0./
      LOGICAL L(10000)/9998*.FALSE.,2*.TRUE./
      LOGICAL L1(10000)/9998*.FALSE.,2*.TRUE./
       DO 20 J=1,10000
        IF(L(J)) GOTO 10
   20    A(J)=1.
   10 CONTINUE
C
       DO 21 J=1,10000
        IF(L1(J)) GOTO 11
   21    B(J)=1.
   11 CONTINUE
C
      N=0
      DO 500 I=1,10000
       IF(A(I).NE.B(I)) THEN
        NG(N)=I
        N=N+1
       ENDIF
  500 CONTINUE
      IF(N.EQ.0) THEN
       WRITE(6,*) '***OK***'
      ELSE
       WRITE(6,*) (NG(I),I=1,N)
      ENDIF
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
