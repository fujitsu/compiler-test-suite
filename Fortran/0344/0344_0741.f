      REAL A(10)/10*0./,B(10)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      LOGICAL L(10)/3*.TRUE.,5*.FALSE.,2*.TRUE./
      K=10
      DO 10 I=1,10
       IF(L(I)) THEN
       K=K-1
       A(K)=B(I)
       ENDIF
 10   CONTINUE
      WRITE(6,1000) A
1000  FORMAT(10(F7.3,1X))
      STOP
      END
