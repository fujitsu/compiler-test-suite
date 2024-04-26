      REAL A(10000)/2000*10.,2000*20.,2000*30.,2000*40.,2000*50./
      REAL B(10000)/10000*0./
      REAL C(10000)/10000*0./
      INTEGER N(10000)/10000*0/
      LOGICAL L(10000)/8000*.FALSE.,2000*.TRUE./
C
      T=0.
      S=0.
      DO 10 I=1,10000
       T=A(I)*1.
       IF(L(I)) GOTO 100
        B(I)=T*0.1
        S=T*0.1
   10 CONTINUE
      X=2.
      GOTO 200
  100 X=1.
  200 WRITE(6,*) S,X
C
      T=0.
      S=0.
      DO 20 I=1,10000
       T=A(I)*1.
       IF(L(I)) GOTO 300
        C(I)=T*0.1
        S=T*0.1
   20 CONTINUE
      X=2.
      GOTO 400
  300 X=1.
  400 WRITE(6,*) S,X
C
      M=1
      DO 40 I=1,10000
       IF(B(I).NE.C(I)) THEN
        N(M)=I
        M=M+1
       ENDIF
  40  CONTINUE
C
      WRITE(6,*) M-1
      WRITE(6,*) (N(I),I=1,M-1)
      STOP
      END
