
!             CVCT6303            LEVEL=4        DATE=85.10.02
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6303                                   *C
!*  2. PURPOSE        :  SCALAR EXPANSION                           *C
!*                       .                                          *C
!*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
!*  4. ENVIRONMENT    :                                             *C
!*  5. HISTORY        :  1985.10.2                                  *C
!********************************************************************C
PROGRAM CV6303
  type st1
     REAL A(10),B(10),C(10),D(10),E(10),F(10)
     LOGICAL M(10)
  end type st1
  type(st1) :: str
  DATA str%A/1,2,3,4,5,6,7,8,9,10/,str%B/1,2,3,4,5,6,7,8,9,10/
  DATA str%M/5*.FALSE.,5*.TRUE./,str%C/10*0./,str%D/10*2.5/
  DATA str%E/1,2,3,4,5,6,7,8,9,10/,str%F/2,4,6,8,10,12,14,16,18,20/
  !
  !  GATHER
  !
  K = 0
  DO  I=2,10
     S = str%A(I)
     str%B(I) = str%B(I-1) + I
     IF(str%M(I)) THEN
        K=K+1
        str%C(K)=S+str%D(I)
     ENDIF
10   CONTINUE
  enddo
  WRITE(6,*) S,str%C
  !
  !  SCATTER
  !
  K = 0
  DO  I=2,10
     S = str%A(I)
     str%B(I) = str%B(I-1) + I
     IF(str%M(I)) THEN
        K=K+1
        str%C(I)=S+str%D(K)
     ENDIF
20   CONTINUE
  enddo
  WRITE(6,*) S,str%C
  !
  !  GATHER/SCATTER
  !
  K = 0
  J = 0
  DO  I=2,10
     S = str%A(I)
     str%B(I) = str%B(I-1) + I
     IF(str%M(I)) THEN
        K=K+1
        str%C(I)=S+str%D(K)
     ELSE
        J=J+1
        str%E(J)=S+str%F(I)
     ENDIF
30   CONTINUE
  enddo
  WRITE(6,*) S,str%C,str%E
  STOP
END PROGRAM CV6303
