!             CVCT7116            LEVEL=1        DATE=84.07.28
!********************************************************************C
!  1. PROGRAM NAME  : CVCT7117                                       C
!  2. PURPOSE       : DOP TEST PROGRAM                               C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   :  VOCL NOMIVECT                                 C
!  5. HISTORY       : 1984 - 07 - 18                                 C
!********************************************************************C
      module str
      type::str_R4_3
        REAL*4 A(30),B(30),C(30)
      end type
      type::str_R4_1_30
        REAL*4 A(30)
      end type
      type::str_R4_0_30
        REAL*4 A(0:30)
      end type
      type::str_R4_1_40
        REAL*4 A(40)
      end type 
      type::str_R4_1_31
        REAL*4 A(31)
      end type
      type::str_R4_9_30
        REAL*4 A(-9:30)
      end type
      end module
      PROGRAM CV7117
      WRITE(6,*) '### CVCT7117 ## DOP TEST ###'
      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      CALL SUB06
      CALL SUB07
      STOP
      END
!
! INCREMENT VALUE
!
      SUBROUTINE SUB01
      use str
      type (str_R4_3)::R4
      type (str_R4_0_30)::RB,RC
      INTEGER * 4 L,N,M,NN,MM
      DATA L/1/,NN/1/,MM/-1/
      R4%B = 0
      R4%C = 0
      RB%A = 0
      RC%A = 0
!
      CALL INIT(R4)
!
      RB%A(0:29) = R4%B
      RC%A(0:29) = R4%C

      DO 20 I=1,10,NN
        DO 21 J=1,10
          R4%A(J) = R4%A(J+NN)
 21     CONTINUE
        DO 22 K=10,20
          R4%A(K-NN) = R4%A(K)
 22     CONTINUE
 20   CONTINUE
!
      DO 30 I=10,1,MM
        DO 31 J=1,10
          RB%A(J) = RB%A(J -MM)
 31     CONTINUE
        DO 32 K=1,10
          RB%A(K+MM) = RB%A(K)
 32     CONTINUE
 30   CONTINUE
!
      N = 1
      M = 10
      DO 40 I=N,M ,L
        DO 41 J=1,10
          RC%A(J) = RC%A(J+L)
 41     CONTINUE
        DO 42 K=1,10
          RC%A(K-L) = RC%A(K)
 42     CONTINUE
 40   CONTINUE
!
      WRITE(6,*) '** SUB01 OUTPUT ***'
      WRITE(6,*) 'RA=',R4%A,'RB=',RB%A,'RC=',RC%A
!
      RETURN
      END
!
! INIT VALUE AND TERMINAL VALUE VARIABLE
!
      SUBROUTINE SUB02
      use str
!
      type (str_R4_3)::R4
      INTEGER * 4 L,N,M,LL,NN,MM
      DATA M/10/,L/-10/,NN/1/,MM/-10/,N1/1/
!
      N = 1
      CALL INIT(R4)
!
      DO 10 I=N,M
        DO 11 J=11,20
          R4%A(J) = R4%A(J+M)
 11     CONTINUE
        DO 12 K=11,20
          R4%A(K-M) = R4%A(K)
 12     CONTINUE
 10    CONTINUE
!
      LL = -1
      DO 20 I=L,LL,+1
        DO 21 J=11,20
          R4%A(J) = R4%A(J-L)
 21     CONTINUE
        DO 22 K=11,20
          R4%A(K+L) = R4%A(K)
 22     CONTINUE
 20    CONTINUE
!
      NN = -1
      DO 30 I=NN,MM,-1
        DO 31 J=11,20
          R4%A(J) = R4%A(J-MM)
 31     CONTINUE
        DO 32 K=11,20
          R4%A(K+MM) = R4%A(K)
 32     CONTINUE
 30    CONTINUE
!
      M = 10
      DO 40 I=N1,M ,-1
        DO 41 J=11,20
          R4%A(J) = R4%A(J+N1)
 41     CONTINUE
        DO 42 K=11,20
          R4%A(K-N1) = R4%A(K)
 42     CONTINUE
 40    CONTINUE
!
       WRITE(6,*) '** SUB02 OUTPUT **'
       WRITE(6,*) 'RA=',R4%A,'RB=',R4%B,'RC=',R4%C
!
      RETURN
      END
!
! DO CONTROLL VARIABLE
!
      SUBROUTINE SUB03
      use str
!
      type (str_R4_3)::R
      type (str_R4_1_31)::RA
      type (str_R4_9_30)::RB
      INTEGER * 4 L,N,M,LL
      DATA M/-10/,L/10 /,LL/-1/
      RA%A=0
      RB%A=0
!
      CALL INIT(R)
      RA%A(1:30)=R%A
      RB%A(-9:20)=R%B
!
      N = 1
      DO 10 I=1,10,1
        DO 11 J=N,10,1
          DO 12 K=1,10,N
            RA%A(K) = RA%A(K+I)
 12       CONTINUE
          DO 13 K1 =10,20,N
            RA%A(K1+N) = RA%A(K1+J+1)
 13       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
      DO 20 I=-10,-1,1
        DO 21 J=M,-1,1
          DO 22 K=1,10
            RB%A(K+I) = RB%A(K)
 22       CONTINUE
          DO 23 K1 =11,20
            RB%A(K1) = RB%A(K1-J)
 23       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
      DO 30 I=10,1,-1
        DO 31 J=L,1,-1
          DO 32 K=10,20
            RB%A(K) = RB%A(K+I)
 32       CONTINUE
          DO 33 K1 =1,10
            RB%A(K1-J) = RB%A(K1)
 33       CONTINUE
 31     CONTINUE
 30   CONTINUE
!
      LL = - 1
      DO 40 I=-1,-10,-1
        DO 41 J=LL,-10,-1
          DO 42 K=11,20
            RB%A(K) = RB%A(K-I)
 42       CONTINUE
          DO 43 K1 =21,30
            RB%A(K1+J) = RB%A(K1)
 43       CONTINUE
 41     CONTINUE
 40   CONTINUE
!
      WRITE(6,*) '** SUB03 OUTPUT **'
      WRITE(6,*) 'RA=',RA%A,'RB=',RB%A,'RC=',R%C
      RETURN
      END
!
! TERM 1
!
      SUBROUTINE SUB04
      use str
!
      type (str_R4_3)::R4
      INTEGER * 4 L,N,LL,NN,MM
      DATA N/10/,L/-10/, NN/-10/,LL/-9/,MM/-9/
!
      CALL INIT(R4)
!
      DO 10 I=1,N+1
        DO 11 J=1,L+1,-1
          DO 12 K=1,10
            R4%A(K+1) = R4%A(K+N+1)
 12       CONTINUE
          DO 13 K1=11,20
            R4%A(K1-1) = R4%A(K1-L)
 13       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
      DO 20 I=2,N+2
        DO 21 J=2,L+2,-1
          DO 22 K=1,10
            R4%B(K+1) = R4%B(K+N)
 22       CONTINUE
          DO 23 K1=11,20
            R4%B(K1-2) = R4%B(K1-L)
 23       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
      DO 30 I=-1,NN-1,-1
        DO 31 J=-1,LL-1,1
          DO 32 K=1,10
            R4%C(K) = R4%C(K-NN)
 32       CONTINUE
          DO 33 K1=11,20
            R4%C(K1) = R4%C(K1+LL)
 33       CONTINUE
 31     CONTINUE
 30   CONTINUE
!
      DO 40 I=-2,MM-2,-1
        DO 41 J=-2,L-2,1
          DO 42 K=1,10
            R4%C(K+1) = R4%C(K-MM+1)
 42       CONTINUE
          DO 43 K1=11,20
            R4%C(K1+1) = R4%C(K1+L+1)
 43       CONTINUE
 41     CONTINUE
 40   CONTINUE
!
      WRITE(6,*) '** SUB04 OUTPUT **'
      WRITE(6,*) 'RA=',R4%A,'RB=',R4%B,'RC=',R4%C
!
      RETURN
      END
!
! TERM 2 : TERM 1 AND TERM 2 VARIABLE
!
      SUBROUTINE SUB05
      use str
!
      type (str_R4_3)::R
      type (str_R4_1_40)::RA
      INTEGER * 4 L,N,M,LL,NN,MM
      DATA N/1/,M/10/,NN/10/,MM/1/,L/1/,LL/5/
      RA%A=0
!
      CALL INIT(R)
      RA%A(1:30)=R%A
!
      DO 10 I=N,M
        DO 11 J=NN,MM,-1
          DO 12 K=1,10
            RA%A(K+N) = RA%A(K+M)
 12       CONTINUE
          DO 13 K1=20,30
            RA%A(K1+MM) = RA%A(K1+NN)
 13       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
      DO 20 I=-M,-N
        DO 21 J=-NN,-MM,-1
          DO 22 K=1,10
            RA%A(K+N) = RA%A(K+M)
 22       CONTINUE
          DO 23 K1=11,20
            RA%A(K1+MM) = RA%A(K1+NN)
 23       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
      DO 30 I=L*2,LL*2
        DO 33 KK=LL*3,L*3,-1
          DO 31 J=15,25
            RA%A(J+L) = RA%A(J+LL)
 31       CONTINUE
          DO 32 K=11,20
            RA%A(K+L) = RA%A(K+LL)
 32       CONTINUE
 33     CONTINUE
 30   CONTINUE
!
      WRITE(6,*) '** SUB05 OUTPUT **'
      WRITE(6,*) 'RA=',RA%A,'RB=',R%B,'RC=',R%C
!
      RETURN
      END
!
! TERM 2 : TERM 1 VARIABLE , TERM 2 CONSTANT
!
      SUBROUTINE SUB06
      use str
!
      type (str_R4_3)::R, R2
      INTEGER * 4 L,N,M,LL,NN,MM
      DATA M/10/,MM/10/,N/10/,NN/10/,L/-10/,LL/-10/
!
      CALL INIT(R)
      CALL INIT(R2)
!
      DO 10 I=1,M
        DO 11 J=MM,1,-1
          DO 12 K=1,10
            R%A(K) = R%A(K+M)
 12       CONTINUE
          DO 13 K1=11,20
            R%A(K1) = R%A(K1+MM)
 13       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
      DO 20 I=2,N
        DO 21 J=NN,2,-1
          DO 22 K=1,10
            R%A(K) = R%A(K+N)
 22       CONTINUE
          DO 23 K1=11,20
            R%A(K1) = R%A(K1+NN)
 23       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
      DO 30 I=1,M+3
        DO 31 J=MM+3,1,-1
          DO 32 K=1,10
            R%A(K+1) = R%A(K+M)
 32       CONTINUE
          DO 33 K1=11,20
            R%A(K1+1) = R%A(K1+MM)
 33       CONTINUE
 31     CONTINUE
 30   CONTINUE
!
      DO 40 I=1,M-1
        DO 41 J=MM-1,1,-1
          DO 42 K=1,10
            R%A(K+1) = R%A(K+M)
 42       CONTINUE
          DO 43 K1=11,20
            R%A(K1+1) = R%A(K1+MM)
 43       CONTINUE
 41     CONTINUE
 40   CONTINUE
!
      DO 50 I=1,M*2
        DO 51 J=MM*2,1,-1
          DO 52 K=1,10
            R%A(K) = R%A(K+M)
 52       CONTINUE
          DO 53 K1=11,20
            R%A(K1) = R%A(K1+MM)
 53       CONTINUE
 51     CONTINUE
 50   CONTINUE
!
      DO 60 I=1,-L
        DO 61 J=-LL,1,-1
          DO 62 K=1,10
            R%A(K) = R%A(K-L)
 62       CONTINUE
          DO 63 K1=11,20
            R%A(K1) = R%A(K1-LL)
 63       CONTINUE
 61     CONTINUE
 60   CONTINUE
!
      WRITE(6,*) '** SUB06 OUTPUT **'
      WRITE(6,*) 'RA=',R%A,'RB=',R%B,'RC=',R%C
      WRITE(6,*) 'RD=',R2%A,'RE=',R2%B,'RF=',R2%C
!
      RETURN
      END
!
!
! TERM 2 : TERM 1 CONSTANT , TERM 2 VARIABLE
!
      SUBROUTINE SUB07
      use str
!
      type (str_R4_3)::R,R2
      INTEGER * 4 L,N,M,LL,NN,MM
      DATA M/10/,MM/10/,N/10/,NN/10/,L/-10/,LL/-10/,M1/4/,MM1/4/
!
      CALL INIT(R)
      CALL INIT(R2)
!
      DO 10 I=M,1,-1
        DO 11 J=1,MM,1
          DO 12 K=1,10
            R%A(K) = R%A(K+M)
 12       CONTINUE
          DO 13 K1=11,20
            R%A(K1) = R%A(K1+MM)
 13       CONTINUE
 11     CONTINUE
 10   CONTINUE
!
      DO 20 I=N,2,-1
        DO 21 J=2,NN
          DO 22 K=1,10
            R%B(K) = R%B(K+N)
 22       CONTINUE
          DO 23 K1=11,20
            R%B(K1) = R%B(K1+NN)
 23       CONTINUE
 21     CONTINUE
 20   CONTINUE
!
      DO 30 I=M+3,1,-1
        DO 31 J=1,MM+3
          DO 32 K=1,10
            R%C(K+1) = R%C(K+M)
 32       CONTINUE
1          DO 33 K1=11,20
            R%C(K1+1) = R%C(K1+MM)
 33       CONTINUE
 31     CONTINUE
 30   CONTINUE
!
      DO 40 I=M-1,1,-1
        DO 41 J=1,MM-1,1
          DO 42 K=1,10
            R2%A(K+1) = R2%A(K+M)
 42       CONTINUE
          DO 43 K1=11,20
            R2%A(K1+1) = R2%A(K1+MM)
 43       CONTINUE
 41     CONTINUE
 40   CONTINUE
!
      DO 50 I=M1*2,1,-1
        DO 51 J=1,MM1*2,1
          DO 52 K=1,10
            R2%B(K) = R2%B(K+M1)
 52       CONTINUE
          DO 53 K1=11,20
            R2%B(K1) = R2%B(K1+MM1)
 53       CONTINUE
 51     CONTINUE
 50   CONTINUE
!
      DO 60 I=-L,1,-1
        DO 61 J=1,-LL,1
          DO 62 K=1,10
            R2%C(K) = R2%C(K-L)
 62       CONTINUE
          DO 63 K1=11,20
            R2%C(K1) = R2%C(K1-LL)
 63       CONTINUE
 61     CONTINUE
 60   CONTINUE
!
      WRITE(6,*) '** SUB07 OUTPUT **'
      WRITE(6,*) 'RA=',R%A,'RB=',R%B,'RC=',R%C
      WRITE(6,*) 'RD=',R2%A,'RE=',R2%B,'RF=',R2%C
!
      RETURN
      END
!
!
      SUBROUTINE INIT(X)
      use str
!
      type (str_R4_3)::X    
      DO 10 I=1,30
        X%A(I) = I
        X%B(I) = X%A(I) + 1.
        X%C(I) = X%A(I) + X%B(I)
 10   CONTINUE
      RETURN
      END
