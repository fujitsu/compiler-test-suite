!             CVCT7115            LEVEL=1        DATE=84.07.28
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7115                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . MAKE OCL OF TERM 2 (VARIABLE - VARIABLE)    C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 24                                 C
!********************************************************************C
      PROGRAM CV7115
      type::str_R4
      REAL * 4 A(30),B(30),C(30)
      end type
      type (str_R4)::R4
      DATA R4%A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
          , 11.,12.,13.,14.,15.,16.,17.,18.,19.,20. &
          , 21.,22.,23.,24.,25.,26.,27.,28.,29.,30./
      DATA R4%B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
          , 11.,12.,13.,14.,15.,16.,17.,18.,19.,20. &
          , 21.,22.,23.,24.,25.,26.,27.,28.,29.,30./
      DATA R4%C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
          , 11.,12.,13.,14.,15.,16.,17.,18.,19.,20. &
          , 21.,22.,23.,24.,25.,26.,27.,28.,29.,30./
!
! TEST NO. 1 : INCREMENT SIGN PLUS
!
      N = 1
      M = 10
      N1 = 1
      M1 = 5
      N2 = 1
      M2 = 8
      N3 = 1
      M3 = 3
!
      DO 10 I=N,M,1
        DO 11 I1=N1*2,M1*2,1
          DO 12 I2=N2+2,M2+2
            DO 13 I3=N3*2,M3*3
              DO 15 K1=1,10
                R4%A(K1+N) = R4%A(K1+M)
                R4%A(K1+N1) = R4%A(K1+M1)
                R4%A(K1+N2) = R4%A(K1+M2)
                R4%A(K1+N3) = R4%A(K1+M3)
 15           CONTINUE
              DO 16 K2=11,20
                R4%A(K2) = R4%A(K2+N)
 16           CONTINUE
 13         CONTINUE
 12       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
! TEST NO. 2 : INCREMENT SIGN MINUS
!
      N4 = 10
      M4 = 1
      N5 = 5
      M5 = 1
      N6 = 10
      M6 = 1
      N7 = 5
      M7 = 1
!
      DO 20 I=N4,M4,-1
        DO 21 I1=N5*2,M5*2,-1
          DO 22 I2=N6+2,M6+2,-1
            DO 23 I3=N7*2,M7*3,-1
              DO 25 K1=1,10
                R4%B(K1+M4) = R4%B(K1+N4)
                R4%B(K1+M5) = R4%B(K1+N5)
                R4%B(K1+M6) = R4%B(K1+N6)
                R4%B(K1+M7) = R4%B(K1+N7)
 25           CONTINUE
              DO 26 K2=1,10
                R4%B(K2) = R4%A(K2+I)
 26           CONTINUE
 23         CONTINUE
 22       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
      WRITE(6,*) '### CVCT7115 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B,'C=',R4%C
!
      STOP
      END
