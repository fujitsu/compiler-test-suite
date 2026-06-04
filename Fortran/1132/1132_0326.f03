!             CVCT7112            LEVEL=1        DATE=84.07.28
!********************************************************************C
!  1. PROGRAM NAME  : CVCT71112                                      C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . INT OR TRM SIGN                             C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 24                                 C
!********************************************************************C
      PROGRAM CV7112
      type::str_R4
      REAL * 4 A(30),B(30),C(30),D(30)
      end type
      type (str_R4)::R4
      DATA R4%A/10*1.,10*2.,10*3./
      DATA R4%B/10*4.,10*5.,10*6./
      DATA R4%C/10*7.,10*8.,10*9./
      DATA R4%D/10*10.,10*11.,10*12./
      DATA  L1/10/,L2/10/,L3/-10/,L4/-10/,L5/10/,L6/-10/
      DATA L7/-10/,L8/10/,L9/-10/,L10/10/,L11/-10/,L12/10/
!
! TEST NO. 1 : I = (+) , ? , (+)
!
      N = 1
!
      DO 10 I=1,L1,1
        DO 11 J=N,L2,1
          DO 12 J1=1,-L3,1
            DO 13 K1=1,10
              R4%A(K1) = R4%A(K1+L1)
              R4%A(K1) = R4%A(K1+L2)
              R4%A(K1) = R4%A(K1-L3)
 13         CONTINUE
            DO 14 K2=11,20
              R4%A(K2) = R4%A(K2+L1)
 14         CONTINUE
 12       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
! TEST NO. 2 : I= ? , (-) , (+)
!
      N = 1
!
      DO 20 I=L4,-1,1
        DO 21 J=-L5,-1,1
          DO 22 J1=L6,-N,-1
            DO 23 K1 = 1,10
              R4%B(K1) = R4%B(K1-L4)
              R4%B(K1) = R4%B(K1+L5)
              R4%B(K1) = R4%B(K1-L6)
 23         CONTINUE
            DO 24 K2=1,10
              R4%B(K2) = R4%B(K2-I)
 24         CONTINUE
 22       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
! TEST NO. 3 : I= (-) , ? , (-)
!
      DO 30 I=-1,L7,-1
        DO 31 J=-1,-L8,-1
          DO 32 J2=-N,L9,-1
            DO 33 K1 =1,10
              R4%C(K1) = R4%C(K1-L7)
              R4%C(K1) = R4%C(K1+L8)
              R4%C(K1) = R4%C(K1-L9)
 33         CONTINUE
            DO 34 K2=1,10
              R4%C(K2) = R4%A(K2-I)
 34         CONTINUE
 32       CONTINUE
 31     CONTINUE
 30   CONTINUE
!
! TEST NO. 4 : I= ? , (+) , (-)
!
      DO 40 I=L10,1,-1
        DO 41 J=-L11,1,-1
          DO 42 J1=L12,N,-1
            DO 43  K1=1,10
              R4%D(K1) = R4%D(K1+L10)
              R4%D(K1) = R4%D(K1-L11)
              R4%D(K1) = R4%D(K1+L12)
 43         CONTINUE
            DO 44 K2=1,10
              R4%D(K2) = R4%D(K2+N)
 44         CONTINUE
 42       CONTINUE
 41     CONTINUE
 40   CONTINUE
!
      WRITE(6,*) '### CVCT7112 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B,'C=',R4%C,'D=',R4%D
      STOP
      END
