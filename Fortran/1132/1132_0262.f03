!ocl loop_nofusion
!             CVCT6025            LEVEL=4        DATE=83.08.19
!****************************************************************C
!   1. PROGRAM NAME   :  CVCT6025                                C
!   2. PURPOSE        :  VGEN FUNCTION TEST --- VECTORIZE SOURCE C
!   3. RESULTS        :  ALL VECTORIZED                          C
!   4. ENVIRONMENT    :  VPLEVEL(4)                              C
!   5. HISTORY        :  1982.08.03 N1127                        C
!****************************************************************C
PROGRAM CV6025
  type st1
     REAL*8 A(10),B(10),C(10),D(10),E(10)
  end type st1
  type(st1) :: str
  DATA N/10/
  DATA str%A,str%B,str%C,str%D,str%E/50*1.0/
  !
  WRITE(6,*) ' ***** CVCT6025 *****                        '
  WRITE(6,*) ' NO.1 TIGHTLY LOOP '
  DO  I=1,N
     DO  J=1,N
        str%A(J) = I
     enddo
  enddo
  !
  DO  I=1,N
     DO  J=1,N
     enddo
  enddo
  !
  DO  I=1,N
     DO  J=2,N
        str%A(J) = str%A(J-1)
     enddo
  enddo
  !
  DO  I=1,N
     DO  J=2,N
        str%A(J) = str%A(J-1)
        str%B(J) = str%C(J) + str%A(J)
     enddo
  enddo
  !
  DO  I=1,N
     str%A(I) = str%B(I)
     DO  J=1,N
        str%C(J) = str%D(J)
     enddo
  enddo
  !
  DO  I=2,N
     str%A(I) = str%A(I-1)
     DO  J=1,N
        str%C(J) = str%D(J)
61      CONTINUE
     enddo
     str%C(I) = str%A(I)
60   CONTINUE
  enddo
  !
  DO  I=2,N
     str%A(I) = str%A(I-1)
     DO  J=1,N
        str%C(J) = str%D(J)
71      CONTINUE
     enddo
     str%C(I) = str%B(I) + str%A(I)
70   CONTINUE
  enddo
  WRITE(6,*) str%A,str%B,str%C,str%D
  !
  WRITE(6,*) ' NO.2 TIGHTLY LOOP WITH OUTER LOOP'
  DO  K=1,N
     str%B(K) = K
     DO  I=1,N
        DO  J=1,N
           str%A(J) = I
81         CONTINUE
        enddo
80      CONTINUE
     enddo
     str%C(K) = str%B(K)
82   CONTINUE
  enddo
  !
  DO  K=2,N
     str%B(K) = K
     DO  I=1,N
        DO  J=1,N
91         CONTINUE
        enddo
90      CONTINUE
     enddo
     str%C(K) = str%C(K-1)
92   CONTINUE
  enddo
  !
  DO  K=2,N
     str%B(K) = str%B(K-1)
     DO  I=1,N
        DO  J=2,N
           str%A(J) = str%A(J-1)
101        CONTINUE
        enddo
100     CONTINUE
     enddo
     str%C(K) = str%C(K) + str%B(K)
102  CONTINUE
  enddo
  !
  DO  K=1,N
     str%D(K) = str%E(K)
     DO  I=1,N
        DO  J=2,N
           str%A(J) = str%A(J-1)
           str%B(J) = str%C(J) + str%A(J)
111        CONTINUE
110        CONTINUE
        enddo
     enddo
     str%B(K) = str%D(K) + 1.
112  CONTINUE
  enddo
  !
  DO  K=1,N
     str%A(K) = str%B(K)
     DO  I=1,N
        str%A(I) = str%B(I)
        DO  J=1,N
           str%C(J) = str%D(J)
        enddo
     enddo
121  CONTINUE
120  CONTINUE
     str%D(K) = str%E(K) - 1.
122  CONTINUE
  enddo
  !
  DO  K=1,N
     str%B(K) = str%B(K) + 1.0
     DO  I=2,N
        str%A(I) = str%A(I-1)
        DO  J=1,N
           str%C(J) = str%D(J)
131        CONTINUE
        enddo
        str%C(I) = str%A(I)
130     CONTINUE
132     CONTINUE
     enddo
  enddo
  !
  DO  K=1,N
     DO  I=2,N
        str%A(I) = str%A(I-1)
        DO  J=1,N
           str%C(J) = str%D(J)
141        CONTINUE
        enddo
        str%C(I) = str%B(I) + str%A(I)
140     CONTINUE
     enddo
     str%E(K) = str%E(K) + 1.0
142  CONTINUE
  enddo
  !
  WRITE(6,*) str%A,str%B,str%C,str%D,str%E
  STOP
END program
