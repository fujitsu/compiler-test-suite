          REAL*4 COS
   10 FORMAT('0',5X,'OS/700 FORTRAN TEST ... = TEST ='//
     *       T21,'======================================================
     * ====')
          COMPLEX*16 W1,W2
      WRITE(6,10)
      W2=(0.0,0.0)
      W1=COS(W2)
      STOP
      END
