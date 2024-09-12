      PROGRAM MAIN
       REAL*4        RFUN,A,B
       INTEGER*4     IFUN,C,D
       LOGICAL*1     LFUN,E,F
        A=3.5
        C=1400
        E=.TRUE.
        B=RFUN(A)
        D=IFUN(C)
        F=LFUN(E)
        IF(A.NE.B) THEN
          WRITE(6,*) 'NG'
          GOTO 10
        ELSEIF(C.NE.D) THEN
          WRITE(6,*) 'NG'
          GOTO 10
        ELSEIF(E.NEQV.F) THEN
          WRITE(6,*) 'NG'
          GOTO 10
        ENDIF
        WRITE(6,*) '*****PASS*****'
   10 END
      FUNCTION RFUN(A)
       REAL*4               RFUN,A
        A=A+A
        RFUN=A
      RETURN
      END
      FUNCTION IFUN(A)
       INTEGER*4            IFUN,A
        A=A+A
        IFUN=A
      RETURN
      END
      FUNCTION LFUN(A)
       LOGICAL*1            LFUN,A
        A=A
        LFUN=A
      RETURN
      END
