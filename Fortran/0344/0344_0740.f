      REAL A(10)/10*0./,B(10)/10*1./
      LOGICAL L(10)/3*.TRUE.,5*.FALSE.,2*.TRUE./
      K=10
      DO 10 I=1,10
       IF(L(I)) THEN
       A(I)=B(K)
       K=K-1
       ENDIF
 10   CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(F6.3,2X))
      STOP
      END
