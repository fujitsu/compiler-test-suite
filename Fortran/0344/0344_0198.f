      REAL * 4 A(20),B(20),C(20),D(20),E(20)
      DATA   A/5*1.,5*2.,5*3.,5*4./
      DATA   B/5*5.,5*6.,5*7.,5*8./
      DATA   C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,
     +         11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA   D/20*2./
      DATA   E/5*5.,5*6.,5*7.,5*8./
C
      DO 10 K=1,20
        DO 10 I=2,K,2
          D(I)=I
          IF (E(K).GT.0) THEN
           A(I)=A(I)+K-A(I)
          ELSE
           A(I)=A(I)+I*D(I)
          ENDIF
          CALL SUB(B(I))
          B(I)=B(I-1)+A(I)*2.-B(I-1)
          A(I)=A(I)+B(I)+C(I)*K+I+D(I)
10    CONTINUE
C
      WRITE(6,*) A
      STOP
      END
      SUBROUTINE SUB(N)
      real n
      N=N+(N-2.)
      RETURN
      END


