      SUBROUTINE FA239(A,B)
      INTEGER  A(16),B(16)
      A = IBCLR ( A  , B)
      END SUBROUTINE

      INTEGER  res(16)/1,0,1,4,5,4,5,8,9,8,9,12,13,12,13,16/
      INTEGER  A(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      INTEGER  B(16)/16*1/
      call FA239(A,B)
      do i=1,16
         if (A(i) .ne. res(i)) then
            write(6,*) "ng"
            write(6,*) A
            write(6,*) res
            stop
         endif
      enddo
      write(6,*) "OK"
      end
