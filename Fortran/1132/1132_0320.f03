!             CVCT7104            LEVEL=1        DATE=84.07.27
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7104                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . SCR TEST                                    C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 23                                 C
!********************************************************************C
      PROGRAM CV7104
      type::str_R4
      REAL * 4 A(20),B(20)
      end type
      type (str_R4)::R4
      INTEGER * 4 N,M,NN
      DATA R4%A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
        ,   11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R4%B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
        ,   11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
!
      N = 1
      NN = 1
      M = 10
!
      DO 10 I=N,M,NN
        DO 20 J=I,10
          R4%A(J) = R4%A(J+I)  + R4%B(J)
          R4%A(J) = R4%A(J+N)  + R4%B(J)
          R4%A(J) = R4%A(J+M)  + R4%B(J)
          R4%A(J) = R4%A(J+NN) + R4%B(J)
 20     CONTINUE
        DO 21 K=1,M
          R4%B(K) = R4%B(K+I)
          R4%B(K) = R4%B(K+N)
          R4%B(K) = R4%B(K+M)
          R4%B(K) = R4%B(K+NN)
 21     CONTINUE
 10   CONTINUE
!
      WRITE(6,*) '### CVCT7104 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B
      STOP
      END
