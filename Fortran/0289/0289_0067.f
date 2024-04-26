      REAL*4    R11,R12,R13,R14
     /         ,R21,R22,R23,R24,WORKR(8)
      INTEGER*4 R15,R25,I4MAX,WORKI(2)
      DATA WORKR/1.0,1.0,1.0,1.0,3.0,3.0,3.0,3.0/
      DATA WORKI/1,-3/
      POINTER (PR11,R11),(PR12,R12),(PR13,R13),(PR14,R14),(PR15,R15)
      POINTER (PR21,R21),(PR22,R22),(PR23,R23),(PR24,R24),(PR25,R25)
      PARAMETER (I4MAX=Z'80000000')
      PR11=LOC(WORKR(1))
      PR12=LOC(WORKR(2))
      PR13=LOC(WORKR(3))
      PR14=LOC(WORKR(4))
      PR15=LOC(WORKI(1))
      PR21=LOC(WORKR(5))
      PR22=LOC(WORKR(6))
      PR23=LOC(WORKR(7))
      PR24=LOC(WORKR(8))
      PR25=LOC(WORKI(2))
        CALL SUB23(R11,R21)
        CALL SUB24(R12,R22)
        CALL SUB25(R13,R23)
        CALL SUB26(R14,R24)
        CALL SUB27(R15,R25)

        IF(ABS(R11 - 14.0E+0) .LT. 0.1E-6 .AND.
     /     ABS(R12 + 10.0E+0) .LT. 0.1E-6 .AND.
     /     ABS(R13 - 64.0E+0) .LT. 0.1E-6 .AND.
     /     ABS(R14 - 6.25E-2) .LT. 0.1E-6 .AND.
     /         R15            .EQ. I4MAX      ) THEN
          WRITE(6,*) '*** OK]] ***'
        ELSE
          WRITE(6,*) '*** NG?? ***'
          WRITE(6,*) R11,R21
          WRITE(6,*) R12,R22
          WRITE(6,*) R13,R23
          WRITE(6,*) R14,R24
          WRITE(6,*) R15,R25
        ENDIF
        STOP
        END
      SUBROUTINE SUB23(A,C)
      REAL*4    A,C
      INTEGER*4 I
        DO 2300 I=1,5
        CALL SUB28(C)
 2300   A=2.0+C+4.0
        RETURN
        END
      SUBROUTINE SUB24(A,C)
      REAL*4    A,C
      INTEGER*4 I
        DO 2400 I=1,5
        CALL SUB28(C)
 2400   A=2.0-C-4.0
        RETURN
        END
      SUBROUTINE SUB25(A,C)
      REAL*4    A,C
      INTEGER*4 I
        DO 2500 I=1,5
        CALL SUB28(C)
 2500   A=2.0*C*4.0
        RETURN
        END
      SUBROUTINE SUB26(A,C)
      REAL*4    A,C
      INTEGER*4 I
        DO 2600 I=1,5
        CALL SUB28(C)
 2600   A=2.0/C/4.0
        RETURN
        END
      SUBROUTINE SUB27(A,C)
      INTEGER*4 A,C
      INTEGER*4 I,B
      PARAMETER (B=Z'7FFFFFFE')
        DO 2700 I=1,5
        CALL SUB29(C)
 2700   A=C-B-4
        RETURN
        END
      SUBROUTINE SUB28(C)
      REAL*4    C
        C=C+1
        RETURN
        END
      SUBROUTINE SUB29(C)
      INTEGER*4 C
        C=C+1
        RETURN
        END
