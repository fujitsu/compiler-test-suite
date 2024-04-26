      REAL A(10)/10*0./,B(11)/11*1./
      REAL C(10)/10*0./,D(10)/10*1./
      LOGICAL L(10)/3*.TRUE.,5*.FALSE.,2*.TRUE./
      K=1
      DO 10 I=1,10
       IF(L(I)) THEN
       A(I)=B(K)
       C(I)=K
       K=K+1
       D(I)=K+1
       ENDIF
 10   CONTINUE
      WRITE(6,1000) A
      WRITE(6,1000) B
      WRITE(6,1000) C
      WRITE(6,1000) D
      WRITE(6,1001) K
 1000 FORMAT(10(F6.3,2X))
 1001 FORMAT(I4)
      STOP
      END
