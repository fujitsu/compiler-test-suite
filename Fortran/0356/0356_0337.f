      INTEGER*8 IDA(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      INTEGER*8 res(16)/5,6,7,4,5,6,7,12,13,14,15,12,13,14,15,20/
      call FA239(IDA)
      do i=1,16
         if (IDA(i) .ne. res(i)) then
            write(6,*) IDA
            stop
         endif
      enddo
      write(6,*) "ok"
      end
      SUBROUTINE FA239(IDA)
      INTEGER*8 IDA(16)
      IDA = IBSET ( IDA  , 2_8)
      END SUBROUTINE
