      PROGRAM MAIN
       REAL*4        RENT,A,B
       INTEGER*4     IENT,C,D
       LOGICAL*1     LENT,E,F
        A=3.5
        C=1400
        E=.TRUE.
        B=RENT(A)
        D=IENT(C)
        F=LENT(E)
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
       REAL*4               RFUN,A,RENT
        A=A+A
        RFUN=A
      RETURN
      ENTRY RENT(A)
        A=A+A
        RENT=A
      RETURN
      END
      FUNCTION IFUN(A)
       INTEGER*4            IFUN,A,IENT
        A=A+A
        IFUN=A
      RETURN
      ENTRY IENT(A)
        A=A+A
        IENT=A
      RETURN
      END
      FUNCTION LFUN(A)
       LOGICAL*1            LFUN,A,LENT
        A=A
        LFUN=A
      RETURN
      ENTRY LENT(A)
        A=A
        LENT=A
      RETURN
      END
