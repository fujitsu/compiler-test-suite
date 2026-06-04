      SUBROUTINE FA239(LDA1,IDA1,IDA2)
      LOGICAL  LDA1(16)
      INTEGER  IDA1(16),IDA2(16)
      LDA1 = BTEST ( IDA1  , IDA2)
      END SUBROUTINE

      LOGICAL  LDA1(16)/16*.FALSE./
      LOGICAL  res(16)/8*.TRUE.,8*.FALSE./
      INTEGER  IDA1(16)/16*2/
      INTEGER  IDA2(16)/8*1,8*2/
      call FA239(LDA1,IDA1,IDA2)
      do i=1,16
         if (LDA1(i) .xor. res(i)) then
            write(6,*) "ng"
            write(6,*) LDA1
            write(6,*) res
            stop
         endif
      enddo
      write(6,*) "OK"
      end
