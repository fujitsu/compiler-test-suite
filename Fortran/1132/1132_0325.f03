!             CVCT7111            LEVEL=1        DATE=84.07.28
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7111                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . MAKE OCL OF TERM 1.                         C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 23                                 C
!********************************************************************C
      PROGRAM CV7111
      type::str_R4
      REAL * 4 A(30),B(30),C(30),D(30)
      end type
      type (str_R4)::R4
      INTEGER * 4 N,M,N1,M1,NN,MM,NN1,MM1
      DATA R4%A/10*1.,10*2.,10*3./
      DATA R4%B/10*1.,10*2.,10*3./
      DATA R4%C/10*1.,10*2.,10*3./
      DATA R4%D/10*1.,10*2.,10*3./
      DATA N/1/,M/1/,N1/1/,M1/1/,NN/-10/,MM/-1/,NN1/-10/,MM1/-1/
!
! TEST NO. 1
!
      DO 10 I=1,N+1,1
        DO 11 I1=2,N1+2,1
          DO 12 I2=N,N+M,1
            DO 13 I3=N+2,N+M1+2
              DO 15 K1=1,10
                R4%A(K1) = R4%A(K1+N)
                R4%B(K1) = R4%B(K1+N1)
 15           CONTINUE
              DO 16 K2=11,20
                R4%A(K2) = R4%A(K2+M)
                R4%B(K2) = R4%B(K2+M1)
 16           CONTINUE
 13         CONTINUE
 12       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
! TEST NO. 2
!
      DO 20 I=1,NN1,-1
        DO 21 I1=2,NN1+2,-1
          DO 22 I2=NN,NN+MM,-1
            DO 23 I3=NN+2,NN+MM1+2,-1
              DO 25 K1=11,20
                R4%C(K1) = R4%C(K1+NN)
                R4%D(K1) = R4%D(K1-NN1)
 25           CONTINUE
              DO 26 K2=11,20
                R4%C(K2) = R4%C(K2+MM)
                R4%D(K2) = R4%D(K2-MM1)
 26           CONTINUE
 23         CONTINUE
 22       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
      WRITE(6,*) '### CVCT7111 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B,'C=',R4%C,'D=',R4%D
!
      STOP
      END
