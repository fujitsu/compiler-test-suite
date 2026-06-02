      SUBROUTINE FA239(LDA1,IDA1,IDA2,n)
      LOGICAL  LDA1(n)
      INTEGER  IDA1(n),IDA2(n)
      do i=1,n
         LDA1(i) = BTEST ( IDA1(i)  , IDA2(i) )
      enddo
      END SUBROUTINE

      LOGICAL  LDA1(16)/16*.FALSE./
      LOGICAL  res(16)/8*.TRUE.,8*.FALSE./
      INTEGER  IDA1(16)/16*2/
      INTEGER  IDA2(16)/8*1,8*2/
      call FA239(LDA1,IDA1,IDA2,16)
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
