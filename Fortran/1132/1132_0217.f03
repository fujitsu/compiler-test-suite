  !             CVCT5800            LEVEL=3        DATE=84.02.02
  ! < CVCT5800 >
  !   NOT VOLUME VECTORIZE BECUASE LIST VECTOR
  !
  type st1
     real  A(10,10,10),B(10,10,10)
     integer IL(10,10,10)
  end type st1
  type(st1) :: str
  ! u2 add
  str%A = 0
  !
  !  INITIALIZE
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%IL(I,J,K) = I
           str%B(I,J,K)  = I * J * K
10         CONTINUE
        enddo
     enddo
  enddo
  !
  !  (1) DEFINE ONLY
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%A(str%IL(I,J,K),str%IL(I,J,K),str%IL(I,J,K)) = str%B(I,J,K)
20         CONTINUE
30         CONTINUE
40         CONTINUE
        enddo
     enddo
  enddo
  write(6,1) str%A
  write(6,*)
  !
  !  (2) DEFINE & REFARENCE
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%A(str%IL(I,J,K),str%IL(I,J,K),str%IL(I,J,K)) &
                = str%A(str%IL(I,J,K),str%IL(I,J,K),str%IL(I,J,K)) + str%B(I,J,K)
50         CONTINUE
        enddo
     enddo
  enddo
  write(6,1) str%A
1 format(10f10.3)
END program
