!             CVCT7114            LEVEL=1        DATE=84.07.28
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7114                                       C
!  2. PURPOSE       : ANALYZING DOP-DICT                             C
!                      . MAKE OCL OF TERM 2 ( VARIABLE - CONSTANT)   C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VOCL NOMIVECT                                  C
!  5. HISTORY       : 1984 - 07 - 24                                 C
!********************************************************************C
      PROGRAM CV7114
      type::str_R4
      REAL * 4 A(30),B(30)
      end type
      type (str_R4)::R4
      DATA R4%A/10*1.,10*2.,10*3./
      DATA R4%B/10*1.,10*2.,10*3./
      DATA N/10/,N1/10/,N2/8/,N4/-10/,N5/1/,N6/1/
!
! TEST NO. 1 : INCREMENT SIGN PLUS
!
      DO 10 I=1,N,1
        DO 11 I1=2,N1,1
          DO 12 I2=3,N2+3,1
            DO 15 K1=1,10
              R4%A(K1) = R4%A(K1+N)
              R4%A(K1+1) = R4%A(K1+N1)
              R4%A(K1+1) = R4%A(K1+N2)
 15         CONTINUE
            DO 16 K2=11,20
              R4%A(K2) = R4%A(K2+I)
 16         CONTINUE
 12       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
! TEST NO. 2 : INCREMENT SIGN MINUS
!
      DO 20 I=-1,N4,-1
        DO 21 I1=-1,N5,-1
          DO 22 I2=-1,N6+3,-1
            DO 25 K1=11,20
              R4%B(K1) = R4%B(K1-N4)
              R4%B(K1) = R4%B(K1+N5)
              R4%B(K1) =R4%B(K1-N6)
 25         CONTINUE
            DO 26 K2=1,10
              R4%B(K2) = R4%B(K2+K2)
 26         CONTINUE
 22       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
      WRITE(6,*) '### CVCT7114 ## DOP TEST ###'
      WRITE(6,*) 'A=',R4%A,'B=',R4%B
      STOP
      END
