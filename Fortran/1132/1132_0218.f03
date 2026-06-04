  !             CVCT5802            LEVEL=4        DATE=84.02.02
  ! < CVCT5802 >
  !   VOLUME VECTORIZE AND S/V CONTAIN
  !
  type st1
     integer*8   M1(10,10,10)
     real*8 A(10,10,10),B(10,10,10),S
  end type st1
  type(st1) :: str
  !
  !  INITIALIZE
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%M1(I,J,K) = I + J + K
           str%B(I,J,K)  = I * J * K
10         CONTINUE
        enddo
     enddo
  enddo
  !
  !  (1) INTEGER DIVIDE
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           IF(str%M1(I,J,K)/2 .GT. 2) THEN
              str%A(I,J,K) = str%B(I,J,K)
           ELSE
              str%A(I,J,K) = 100. + str%B(I,J,K)
           ENDIF
20         CONTINUE
30         CONTINUE
40         CONTINUE
        enddo
     enddo
  enddo
  write(6,1) str%A
  write(6,*)
  !
  !  (2) SCALAR IS EXIT BUSY
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%A(I,J,K) = str%A(I,J,K) + str%B(K,I,J)
           str%B(K,I,J) = str%A(I,J,K) / 2.
           str%S = str%A(I,J,K) + str%B(K,I,J)
        enddo
     enddo
  enddo
50 CONTINUE
  write(6,1) str%A,str%S
  1 format(8f10.3)
END program
