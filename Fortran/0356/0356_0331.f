      INTEGER  IDA(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      INTEGER  res(16)/1,2,3,0,1,2,3,8,9,10,11,8,9,10,11,16/
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
      INTEGER  IDA(16)
      IDA = IBCLR ( IDA  , 2)
      END SUBROUTINE
