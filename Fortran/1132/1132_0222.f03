  !             CVCT5807            LEVEL=4        DATE=84.02.03
  ! < CVCT5807 >
  !   CHANGE OF DO INDEX
  !
  integer M1(10)
  type st1
     real*8  A(10,10,10),B(10,10,10)
  end type st1
  type(st1) :: str
  !
  !  INITIALIZE
  !
  DO  I=1,10
     M1(I) = I
     DO  J=1,10
        DO  K=1,10
           str%A(I,J,K)  = I* J + K
           str%B(I,J,K)  = I * J * K
10         CONTINUE
        enddo
     enddo
  enddo
  !
  !  (1) INNER MOST INDEX IS 'J'
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%A(I,J,K) = str%B(1,2,J) + str%A(I,J,10)
20         CONTINUE
30         CONTINUE
40         CONTINUE
        enddo
     enddo
  enddo
  write(6,1) str%A
  write(6,*)
  !
  !  (2) INNER MOST INDEX IS 'I'
  !
  DO  I=1,10,2
     DO  J=1,10
        DO  M=1,M1(J)
           DO  K=1,M1(J)
              IF(M.GT.5) THEN
                 str%A(I,J,K) = str%A(I,J,K) + str%B(K,I,J)
                 str%B(K,I,J) = str%A(I,J,K) / 2.
              ELSE
                 str%A(I,J,K) = M
              ENDIF
50            CONTINUE
           enddo
        enddo
     enddo
  enddo
  write(6,1) str%A
1 format(8f12.5)
END program
