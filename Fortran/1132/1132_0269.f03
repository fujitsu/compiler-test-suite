module mm
  type st1
     REAL*8 A(100,100),B(100,100),C(100,100),D(100,100)
     REAL*8 E(10,10,10),F(10,10,10)
     LOGICAL M(100)
  end type st1
  type(st1) :: str
  DATA str%A/10000*0./,str%B/10000*1./,str%C/10000*2./,str%D/10000*3./
  DATA str%E/1000*1./,str%F/1000*2./
  DATA str%M/50*.TRUE.,50*.FALSE./,N/100/
end module mm
!             CVCT6032            LEVEL=4        DATE=84.06.08
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6032                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TUNING MESSAGES                          *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  VTUNE                                      *C
!*  5. HISTORY        :  1984.1.05                                  *C
!********************************************************************C
PROGRAM CV6032
  use mm
  N=100
  !
  !  MESSAGE TEST PROGRAM
  !
  !
  ! VECTORIZATION MESSAGE
  !
  CALL VMSG()
  !
  ! TUNING MESSAGE
  !
  CALL VTUNE()
  !
  ! OTHER  MESSAGE
  !
  CALL VERR()
  s=0.0
  do  j=1,100
     do  i=1,100
1       s=s+str%a(i,j)
     enddo
  enddo
  WRITE(6,*) s
  STOP
END PROGRAM CV6032

SUBROUTINE VMSG()
  use mm
  !
  !
  ! JND201    VECTORIZED BY DO VARIABLE J
  !
  DO  J=1,100
     str%A(J,1) = str%B(J,1)
  enddo
  !
  ! JND202   VECTORIZED BY DO VARIABLES J AND I
  !
  DO  I=1,100
     DO  J=1,100
        str%C(I,J) = str%D(I,J)
     enddo
  enddo
  !
  ! JND203   VECTORIZED BY DO VARIABLES J ... I
  !
  DO  K=1,10
     DO  J=1,10
        DO  I=1,10
           str%E(I,J,K) = str%F(I,J,K)
        enddo
     enddo
  enddo
  !
  ! JND204 VECTORIZED BY MASKED OPERATION METHOD
  !
  DO  I=1,100
     !VOCL STMT,IF(90)
     IF(str%M(I)) str%A(I,2) = str%B(I,2)
  enddo
  !
  ! JND205 VECTORIZED BY GATHER/SCATTER METHOD
  !
  DO I=1,100
     S2 = str%A(I,2)
     IF(str%M(I)) S1 = SQRT(S2)
     str%B(I,2) = S1
  enddo
  !
  ! JND206 VECTORIZED BY LIST VECTOR METHOD
  !
  DO  I=1,100
     IF(str%M(I)) str%A(I,2) = SQRT(str%B(I,2)) + str%C(I,2)
  enddo
  RETURN
END SUBROUTINE VMSG

SUBROUTINE VTUNE()
  use mm
  !
  ! JND404   SPECIFY THE ITERATION COUNT
  !
  DO  I=1,N
     str%A(I,5) = str%B(I,5)
  enddo
  !
  ! JND401   SPECIFY THE TRUE RATIO
  !
  DO  I=1,100
     IF(str%M(I)) str%A(I,2) = SQRT(str%B(I,2)) + str%C(I,2)
  enddo
  !
  !
  RETURN
END SUBROUTINE VTUNE
SUBROUTINE VERR()
  use mm
  DO  I=1,N
     str%A(I,I) = I
  enddo
  !
  RETURN
END SUBROUTINE VERR
