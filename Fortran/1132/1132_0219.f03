!ocl loop_nofusion
  !             CVCT5803            LEVEL=5        DATE=84.02.02
  ! < CVCT5803 >
  !   VOLUME VECTORIZE OF FIND OPERATION
  !
  type st1
     real   A(10,10,10),B(10,10,10),AMAX(10,10),AMIN(10,10)
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
              str%AMAX(I,J) = str%A(I,J,K)
           ENDIF
           IF(str%AMIN(I,J) .GT. str%A(I,J,K)) THEN
              str%AMIN(I,J) = str%A(I,J,K)
           ENDIF
20         CONTINUE
30         CONTINUE
40         CONTINUE
        enddo
     enddo
  enddo
  write(6,1) str%AMAX,str%AMIN
  write(6,*)
  !
  !  (2) FIND FUNCTION
  !
  DO  J=1,10
     DO  I=1,10
        str%AMAX(I,J) = 0.
        str%AMIN(I,J) = 0.
51      CONTINUE
     enddo
  enddo

  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%AMAX(I,J) = MAX(str%AMAX(I,J),str%A(I,J,K))
           str%AMIN(I,J) = MIN(str%AMIN(I,J),str%B(I,J,K))
50         CONTINUE
        enddo
     enddo
  enddo
  write(6,1) str%AMAX,str%AMIN
  1 format(10f8.3)
END program
