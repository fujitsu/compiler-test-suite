!             CVCT7103            LEVEL=2        DATE=90.03.13
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7103                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . SCR TEST                                    C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 23                                 C
!********************************************************************C
      PROGRAM CV7103
      type::str_R4
      REAL * 4 A(20),B(20)
      end type
      type (str_R4)::R4
      INTEGER * 4 N,M,NN,N1,N2
      DATA R4%A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
         ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R4%B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
         ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA M/10/,N2/-10/
!
      N = 1
      NN = 1
      DO 10 I=N,M,NN
        R4%A(I) = R4%A(I+N) + R4%A(I+M) + R4%A(I+NN)
        R4%B(I) = R4%B(I+I) + R4%B(I+M)
 10   CONTINUE
!
      M = -1
      N1 = -1
      DO 20 J=N1,N2,M
        R4%A(J+11) = R4%A(J+N1+12)
        R4%B(J+11) = R4%B(J+N2+21)
 20   CONTINUE
!
      WRITE(6,*) '### CVCT7103 ## DOP TEST ###'
      WRITE(6,*) 'A=' ,R4%A ,'B='  , R4%B
      STOP
      END
