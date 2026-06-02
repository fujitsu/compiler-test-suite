!             CVCT6710            LEVEL=2        DATE=87.09.28
      PROGRAM  CV6710
!
! 1. PROGRAM NAME : CVCT6710
! 2. PURPOSE      : VECTOR/VDOPT TWIN ROUTE
! 3. RESULT       :
! 4. ENVIRONMENT  : OCL OPTION, COMPILER OPT(VDOPT(50))
! 5. HISTORY      : 1987-06-19
!
      type::str_R4
      REAL    * 4  W1(100),W2(100),W3(100)
      end type
      type (str_R4)::T
      DATA         T%W1,T%W2,T%W3/300*1/, N/60/
      INTEGER      J/1/
!
      DO 10 I=1,N
        T%W1(I) = T%W1(I) * 2
        T%W2(I)=T%W2(I)+J
        T%W3(J)=SQRT(FLOAT(J))
        J=J+1
   10 CONTINUE
      WRITE(6,100) T%W1,T%W2,T%W3
  100 FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/, &
             1H ,'--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/, &
             1H ,'--- TW3 ---',/,1H ,(3X,20(5(F17.6,2X)/)))
      END
