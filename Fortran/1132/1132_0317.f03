!             CVCT7101            LEVEL=1        DATE=84.07.27
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7101                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . SCR TEST                                    C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 23                                 C
!********************************************************************C
      PROGRAM CV7101
      type::str_R4
      REAL * 4 A(20),B(20)
      end type
      type (str_R4)::R4
      INTEGER * 4 N,M,NN
      DATA R4%A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
         ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R4%B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
         ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA M/10/
!
      N = 1
      NN = 1
!
      DO 10 I=N,M,NN
        R4%A(I) = R4%A(I+N) + R4%B(I)
        R4%B(I) = R4%B(I+NN) + R4%A(I)
        R4%B(I) = R4%B(I+M)
 10   CONTINUE
!
      WRITE(6,*) '### CVCT7101 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B
      STOP
      END
