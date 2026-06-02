      LOGICAL*8  LDA1(16)
      INTEGER*8  IDA(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      logical*8 res(16)/3*.FALSE.,4*.TRUE.,4*.FALSE.,4*.TRUE.,
     +     .FALSE./
      call FA239(LDA1, IDA)
      do i=1,16
         if (LDA1(i) .xor. res(i)) then
            write(6,*) LDA1
            stop
         endif
      enddo
      write(6,*) "ok"
      end

      SUBROUTINE FA239(LDA1,IDA)
      LOGICAL*8  LDA1(16)
      INTEGER*8  IDA(16)
      LDA1 = BTEST ( IDA  , 2)
      END SUBROUTINE
