      PROGRAM MAIN
      INTEGER A,B(5),C,D,TOTAL
      CHARACTER CHR*7
      COMMON /COM1/A,B/COM2/CHR//C,D
      LOGICAL FLAG
      WRITE(6,*)'#### START ####'
      A=10
      C=10
      CALL SUB

      TOTAL=0
      TOTAL=A+B(1)+B(2)+B(3)+B(4)+B(5)+C+D
      FLAG=TOTAL.EQ.80.AND.CHR.EQ.'FORTRAN'
      IF(FLAG) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB
      INTEGER A,B(5),X(2)
      CHARACTER CHR*7,CH1*4,CH2*3
      COMMON /COM1/A,B/COM2/CHR,CH1,CH2//X
      DO 10 I=1,5
   10   B(I)=10
      Y=1
      CH1='FORT'
      CH2='RAN'
      CHR=CH1//CH2
      X(1)=X(1)
      X(2)=X(1)
      END
