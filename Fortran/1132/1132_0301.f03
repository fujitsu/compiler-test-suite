
!             CVCT6305            LEVEL=1        DATE=85.10.02
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6305                                   *C
!*  2. PURPOSE        :  SCALAR EXPANSION                           *C
!*                       .                                          *C
!*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
!*  4. ENVIRONMENT    :                                             *C
!*  5. HISTORY        :  1985.10.2                                  *C
!********************************************************************C
PROGRAM CV6305
  type st1
     REAL A(10),B(10),C(10),D(10),E(10)
  end type st1
  type(st1) :: str
  LOGICAL M(10)
  DATA str%A/1,2,3,4,5,6,7,8,9,10/,str%B/1,2,3,4,5,6,7,8,9,10/
  DATA M/5*.FALSE.,5*.TRUE./,str%C/10*0./,str%D/10*2.5/
  DATA str%E/1,2,3,4,5,6,7,8,9,10/
  !
  !  NO.1
  !
  K = 0
  DO  I=2,10
     S = str%A(I)
     str%B(I) = str%B(I-1) + I
     IF(M(I)) THEN
        str%D(I) = str%E(I) + I
        K=K+1
        str%C(K)=S+str%D(I)
     ENDIF
  enddo
  WRITE(6,*) S,str%C
  !
  !  NO.2
  !
  K = 1
  DO  I=2,10
     S = str%A(I)
21   str%B(I) = str%B(I-1) + I
     IF(M(I)) THEN
        str%C(K)=S+str%D(I)
        K=K+1
     ENDIF
20   CONTINUE
  enddo
  WRITE(6,*) S,str%C
  STOP
END PROGRAM CV6305
