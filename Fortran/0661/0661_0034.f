      PROGRAM MAIN
       COMPLEX*8     CFUN1,A,B
       COMPLEX*16    CFUN2,C,D
       COMPLEX*16    CFUN3,E,F
        A=(3.5,-1.65)
        C=(5.8D1,7.D0)
        E=(1.0D0,3.14D0)
        B=CFUN1(A)
        D=CFUN2(C)
        F=CFUN3(E)
        IF(A.NE.B) THEN
          WRITE(6,*) 'NG'
          GOTO 10
        ELSEIF(C.NE.D) THEN
          WRITE(6,*) 'NG'
          GOTO 10
        ELSEIF(E.NE.F) THEN
          WRITE(6,*) 'NG'
          GOTO 10
        ENDIF
        WRITE(6,*) '*****PASS*****'
   10 END
      FUNCTION CFUN1(A)
       COMPLEX*8            CFUN1,A
        A=A+A
        CFUN1=A
      RETURN
      END
      FUNCTION CFUN2(A)
       COMPLEX*16           CFUN2,A
        A=A+A
        CFUN2=A
      RETURN
      END
      FUNCTION CFUN3(A)
       COMPLEX*16           CFUN3,A
        A=A+A
        CFUN3=A
      RETURN
      END
