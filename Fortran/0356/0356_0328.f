      SUBROUTINE FA239(A)
      INTEGER  A(16)
      A = IBSET ( A  , 1)
      END SUBROUTINE

      INTEGER  res(16)/3,2,3,6,7,6,7,10,11,10,11,14,15,14,15,18/
      INTEGER  A(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      call FA239(A)
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
