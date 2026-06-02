!             CVCT7108            LEVEL=1        DATE=84.07.28
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7108                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . COLECT INFORMATION                          C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 23                                 C
!********************************************************************C
      PROGRAM CV7108
      type::str_R4
      REAL * 4 A(20),B(20)
      end type
      type (str_R4)::R4
      INTEGER * 4 N,M
      DATA R4%A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
          , 11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R4%B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10. &
          , 11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA M/10/,N/1/
!
      DO 10 I=5,M,1
        DO 11 I1=10,N,-1
          DO 12 I2=1,10
            R4%A(I2) = R4%A(I2+M) + R4%B(I1)
 12       CONTINUE
          DO 13 I3=11,20
            R4%A(I3-10) = R4%A(I3-N) + R4%B(I3)
 13       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
      WRITE(6,*) '### CVCT7108 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B
      STOP
      END
