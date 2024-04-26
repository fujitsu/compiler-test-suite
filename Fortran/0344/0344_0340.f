      PROGRAM MAIN
      COMMON/RMAT/ PLG(16,16,12), ELG(16,16,12)
      DIMENSION T(28), C(16)
      DO 30 I=1,16
        A1 = I - 11
        T(I) = 2.**A1
        DO 20 J=1,16
          A1 = J - 8
          C(J) = 2.**A1
          DO 10 K=1,12
            PLG(J,I,K) = ALOG(C(J)**2*T(I)**2)*1.44269504
            ELG(J,I,K) = PLG(J,I,K)
   10     CONTINUE
   20   CONTINUE
   30 CONTINUE
      
      WRITE(6,*) (((ELG(I,J,K),I=1,16,2),J=1,16,4),K=1,12,3)
      STOP
      END
