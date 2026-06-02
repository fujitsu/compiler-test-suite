!             CVCT7106            LEVEL=1        DATE=84.07.28
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7106                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . SCR TEST                                    C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 23                                 C
!********************************************************************C
      PROGRAM CV7106
      type::str_R4
      REAL * 4 A(20),B(20)
      end type
      type (str_R4)::R4
      INTEGER * 4 N,M,NN,MM
      DATA R4%A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
          , 11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R4%B/20*1./
      DATA M/10/,NN/1/,MM/10/
!
      N = 1
      NN = 1
      DO 10 I=N,M
        DO 20 J1=I,MM
          DO 21 J2=1,10
            R4%A(J2) = R4%A(J2+N)
            R4%A(J2) = R4%A(J2+M)
            R4%A(J2) = R4%A(J2+I)
            R4%A(J2) = R4%A(J2+MM)
 21       CONTINUE
          DO 22 J3=5,10 !5
            R4%A(J3) = R4%A(J3+N)
            R4%A(J3) = R4%A(J3+M)
            R4%A(J3) = R4%A(J3+MM )
 22       CONTINUE
 20     CONTINUE
!
        DO 30 K=NN,I
          DO 31 K1=1,10
            R4%B(K1) = R4%B(K1+NN)
            R4%B(K1) = R4%B(K1+I)
 31       CONTINUE
          DO 32 K2=1,10
            R4%B(K2) = R4%B(K2+N)
            R4%B(K2) = R4%B(K2+K)
            R4%B(K2) = R4%B(K2+NN)
 32       CONTINUE
 30     CONTINUE
 10   CONTINUE
!
      WRITE(6,*) '### CVCT7106 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B
      STOP
      END
