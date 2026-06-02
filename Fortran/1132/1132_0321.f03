!             CVCT7105            LEVEL=1        DATE=84.07.27
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7105                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . SCR TEST                                    C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 23                                 C
!********************************************************************C
      PROGRAM CV7105
      type::str_R4
      REAL * 4 A(20),B(20)
      end type
      type (str_R4)::R4
      INTEGER * 4 N,M,NN,MM
      DATA R4%A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
         ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R4%B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
         ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA M/10/,MM/10/
!
      N = 1
      NN = 1
      DO 10 I=N,M,N
        DO 20 J1=NN,MM
          DO 21 J2=1,10
            R4%A(J2) = R4%A(J2+N)
            R4%A(J2) = R4%A(J2+N)
            R4%A(J2) = R4%A(J2+M)
            R4%A(J2) = R4%A(J2+I)
            R4%A(J2) = R4%A(J2+J1)
            R4%A(J2) = R4%A(J2+NN)
            R4%A(J2) = R4%A(J2+MM)
 21       CONTINUE
 20     CONTINUE
!
        DO 30 K1=M,N ,-1
          DO 31 K2=I,M,N
            R4%B(K2) = R4%B(K2+M)
            R4%B(K2) = R4%B(K2+N)
            R4%B(K2) = R4%B(K2+I)
            R4%B(K2) = R4%B(K2+NN)
            R4%B(K2) = R4%B(K2+K1)
 31       CONTINUE
 30     CONTINUE
 10   CONTINUE
!
      WRITE(6,*) '### CVCT7105 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B
      STOP
      END
