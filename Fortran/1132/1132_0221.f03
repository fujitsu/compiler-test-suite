  !             CVCT5805            LEVEL=7        DATE=84.02.02
  ! < CVCT5805 >
  !   VOLUME VECTORIZE OF FIND OPERATION
  !
  type st1
     real*8   A(10,10,10),AMAX(10,10),AMIN(10,10)
  end type st1
  type(st1) :: str

  !
  !  INITIALIZE
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%A(I,J,K)  = I * J - K
10         CONTINUE
        enddo
     enddo
  enddo
  !
  !  (1) FIND OF MAX/MIN VALUE AND INDEX
  !
  DO  J=1,10
     DO  I=1,10
        str%AMAX(I,J) = 0.
        str%AMIN(I,J) = 0.
11      CONTINUE
     enddo
  enddo
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           IF(str%AMAX(I,J) .LT. str%A(I,J,K)) THEN
              IX1 = K
              str%AMAX(I,J) = str%A(I,J,K)
           ENDIF
           IF(str%AMIN(I,J) .GT. str%A(I,J,K)) THEN
              IX2 = K
              str%AMIN(I,J) = str%A(I,J,K)
           ENDIF
        enddo
     enddo
  enddo
20 CONTINUE
30 CONTINUE
40 CONTINUE
  write(6,1) str%AMAX,str%AMIN
  write(6,*) IX1,IX2
  1 format(10f8.3)
  !
END program
