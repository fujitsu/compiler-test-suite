      INTEGER I401(20)/20*1/

      do i=1,10
      DO 50 J=1,INT(sqrt(REAL(I)))
         I401(J) =  I401(J) + 1
 50   CONTINUE
      enddo
      WRITE(6,*) I401
      END
