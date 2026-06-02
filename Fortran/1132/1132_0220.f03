  !             CVCT5804            LEVEL=6        DATE=84.02.02
  ! < CVCT5804 >
  !   VOLUME VECTORIZE OF FIND OPERATION
  !
  type st1
     real   A(10,10,10),B(10,10,10)
  end type st1
  type(st1) :: str
  !
  !  INITIALIZE
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%B(I,J,K)  = I * J * K
           str%A(I,J,K)  = I * J - K
10         CONTINUE
        enddo
     enddo
  enddo
  !
  !  (1) FIND OF MAX/MIN VALUE
  !
  AMAX = 0.
  AMIN = -10000.
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           IF(AMAX .LT. str%A(I,J,K)) THEN
              AMAX = str%A(I,J,K)
           ENDIF
           IF(AMIN .GT. str%A(I,J,K)) THEN
              AMIN = str%A(I,J,K)
           ENDIF
20         CONTINUE
30         CONTINUE
40         CONTINUE
        enddo
     enddo
  enddo
  write(6,*) AMAX,AMIN
  write(6,*)
  !
  !  (2) FIND FUNCTION
  !
  AMAX = 0.
  AMIN = -10000.
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           AMAX = MAX(AMAX,str%A(I,J,K))
           AMIN = MIN(AMIN,str%B(I,J,K))
50         CONTINUE
        enddo
     enddo
  enddo
  write(6,*) AMAX,AMIN
END program
