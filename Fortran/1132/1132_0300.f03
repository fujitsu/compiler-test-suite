
!             CVCT6304            LEVEL=1        DATE=85.10.02
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6304                                   *C
!*  2. PURPOSE        :  SCALAR EXPANSION + COMPRESS/EXPAND         *C
!*                       .                                          *C
!*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
!*  4. ENVIRONMENT    :                                             *C
!*  5. HISTORY        :  1985.10.2                                  *C
!********************************************************************C
PROGRAM CV6304
    type st1
  LOGICAL LA(10),LB(10),LC(10),LD(10),LE(10),LF(10),LS
  LOGICAL M(10)
end type st1
  type(st1) :: str
  DATA str%LA/5*.TRUE.,5*.FALSE./,str%LB/10*.TRUE./,str%LC/10*.TRUE./
  DATA str%LD/10*.FALSE./,str%LE/10*.FALSE./,str%M/5*.TRUE.,5*.FALSE./
  DATA str%LF/3*.FALSE.,3*.TRUE.,3*.FALSE.,.TRUE./
  !
  !  GATHER
  !
  K = 0
  DO  I=2,10
     str%LS = str%LA(I)
     str%LB(I) = str%LB(I-1).OR.str%LC(I)
     IF(str%M(I)) THEN
        K=K+1
        str%LD(K)=str%LS.OR.str%LE(I)
     ENDIF
  enddo
  WRITE(6,*) str%LS,str%LD
  !
  !  SCATTER
  !
  K = 0
  DO  I=2,10
     str%LS = str%LA(I)
     str%LB(I) = str%LB(I-1).AND.str%LC(I)
     IF(str%M(I)) THEN
        K=K+1
        str%LC(I)=str%LS.OR.str%LD(K)
     ENDIF
20   CONTINUE
  enddo
  WRITE(6,*) str%LS,str%LC
  !
  !  GATHER/SCATTER
  !
  K = 0
  J = 0
  DO  I=2,10
     str%LS = str%LA(I)
     str%LB(I) = .NOT.str%LB(I-1)
     IF(str%M(I)) THEN
        K=K+1
        str%LC(K)=str%LS.OR.str%LD(I)
     ELSE
        J=J+1
        str%LE(I)=str%LS.AND.str%LF(J)
     ENDIF
30   CONTINUE
  enddo
  WRITE(6,*) str%LS,str%LC,str%LE
  STOP
END PROGRAM CV6304
