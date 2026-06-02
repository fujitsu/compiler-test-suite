!             CVCT7109            LEVEL=1        DATE=84.07.28
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7109                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      .MAKE OCL OF INCREMENT VALUE                  C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 23                                 C
!********************************************************************C
      PROGRAM CV7109
      type::str_R4
      REAL * 4 A(30),B(30),C(30),D(30),E(30),F(30)
      end type
      type (str_R4)::R4
      DATA N1/1/,L/1/,LL/4/
!
!
      DO 10 I=1,30
        R4%A(I) = 1
        R4%B(I) = R4%A(I) + 1.
        R4%C(I) = R4%B(I) + 1.
        R4%D(I) = R4%C(I) + 1.
        R4%E(I) = R4%D(I) + 1.
        R4%F(I) = R4%E(I) + 1.
 10   CONTINUE
!
!  TEST NO.1 :
!
      N = 1
      M = -1
      DO 20 I=1,10,N
        DO 21 J=1,10,-M
          DO 22 J1=1,10,N1
            DO 23 K1=1,10
              R4%A(K1) = R4%A(K1+N)
              R4%A(K1) = R4%A(K1-M) + R4%A(K1)
 23         CONTINUE
            DO 24 K2 =21,30
              R4%A(K2-N1) = R4%A(K2)
 24         CONTINUE
 22       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
!  TEST NO.2 :
!
      N2 = 1
      M2 = -1
!
      DO 30 I=L,LL,N2
        DO 31 J=L,LL,-M2
          DO 32 J1=-10,-1,N2
            DO 33 K1=1,10
              R4%B(K1) = R4%B(K1+N2)
              R4%B(K1) = R4%B(K1-M2) + R4%B(K1)
 33         CONTINUE
            DO 34 K2 =21,30
              R4%B(K2-N2) = R4%B(K2)
              R4%B(K2+M2) = R4%B(K2) + R4%A(K2)
 34         CONTINUE
 32       CONTINUE
 31     CONTINUE
 30   CONTINUE
!
!  TEST NO.3 :
!
      N3 = 1
      M3 = -1
!
      DO 40 I=10,1,-N3
        DO 41 J=10,1,M3
          DO 42 J1=10,1,N-3
            DO 43 K1=1,10
              R4%C(K1) = R4%C(K1+N3)
              R4%C(K1) = R4%C(K1-M3)
 43         CONTINUE
            DO 44 K2 =1,10
              R4%C(K2) = R4%C(K2+N3) + R4%C(K2)
 44         CONTINUE
 42       CONTINUE
 41     CONTINUE
 40   CONTINUE
!
!  TEST NO.4 :
!
      N4 = 1
      M4 = -1
!
      DO 50 I=LL,L,-N4
        DO 51 J=LL,L,M4
          DO 52 J1=LL,L,-N
            DO 53 K1=1,5
              R4%D(K1) = R4%D(K1+N4)
              R4%D(K1) = R4%D(K1-M4)
 53         CONTINUE
            DO 54 K2 =11,15
              R4%D(K2) = R4%D(K2+N4) + R4%D(K2)
 54         CONTINUE
 52       CONTINUE
 51     CONTINUE
 50   CONTINUE
!
!  TEST NO.5 :
!
      N5 = 1
!
      DO 60 I=1,LL,N5+1
        DO 61 J=1,LL,I
          DO 62 J1=1,10,LL
            DO 63 K1=1,10
              R4%E(K1) = R4%E(K1+N5)
              R4%E(K1) = R4%E(K1+LL)
 63         CONTINUE
            DO 64 K2 =11,20
              R4%E(K2) = R4%E(K2+J) + R4%E(K2)
 64         CONTINUE
 62       CONTINUE
 61     CONTINUE
 60   CONTINUE
!
!  TEST NO.6 :
!
      N6 = 1
      M6 = -1
!
      DO 70 I=1,10,N6
        DO 71 J=1,10,-M6
          DO 72 K1=1,10
            R4%F(K1) = R4%F(K1+N6)
 72       CONTINUE
          DO 73 K2 =11,20
            R4%F(K2) = R4%F(K2-M6)
 73       CONTINUE
 71     CONTINUE
        N6 = 1
        M6 = -1
 70   CONTINUE
!
      WRITE(6,*) '### CVCT7109 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B,'C=',R4%C,'D=',R4%D,'E=',R4%E,'F=',R4%F
      STOP
      END
