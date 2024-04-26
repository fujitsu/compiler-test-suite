      SUBROUTINE FA239(A,B)
      INTEGER  A(16),B(16)
      A = IBSET ( A  , B)
      END SUBROUTINE

      INTEGER  res(16)/3,2,3,6,7,6,7,10,11,10,11,14,15,14,15,18/
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
