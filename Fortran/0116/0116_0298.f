      program main
      INTEGER  B(10,10),C(10,10,10)
      real(8),parameter :: ANSWER=10.0
      real(8) :: result
      COMMON /BLK/B,C
      DO 10 I=1,10
         CALL SUB(I)
 10       CONTINUE
      do i=1,10
         do j=1,10
            do k=1,10
               result = C(k,j,i)
            enddo
         enddo
      enddo

      if ( result .eq. ANSWER ) then
      print *,"ok"
      else
         print *,"ng",result,ANSWER
      endif
!      WRITE(6,*) c
 100   FORMAT(1H ,20I3)
      STOP
      end program main

      SUBROUTINE SUB(J)
      INTEGER  B(10,10),C(10,10,10)
      COMMON /BLK/B,C
      DO 10 I=1,10
         CALL SUB1(I,J)
 10       CONTINUE
      RETURN
      END

      SUBROUTINE SUB1(J,K)
      INTEGER  B(10,10),C(10,10,10)
      COMMON /BLK/B,C
      DO 10 I=1,10
         C(I,J,K) = I
 10       CONTINUE
      RETURN
      END
