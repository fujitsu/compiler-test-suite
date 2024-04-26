      PROGRAM MAIN
      REAL A(10000)
      DATA A/10000*1/
C
      DO 10 I=9000,2,-1
        A(I)=I/12
        N=A(I)+A(I+1)
        IF (A(I)*2.GT.N) THEN
          DO 20 J=I,10000
            A(I)=J/5
            A(I)=A(I)+J
   20     CONTINUE
        ELSE
          A(I)=I
        ENDIF
   10 CONTINUE
C
      
      WRITE(6,*) (A(I),I=1,10000,100)
      STOP
      END
