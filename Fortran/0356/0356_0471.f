      LOGICAL*8  LDA1(16)
      INTEGER*8  IDA(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      INTEGER*8  IDA2(16)/16*1/
      logical*8 res(16)/.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.TRUE.,
     +     .TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,
     +     .FALSE.,.TRUE.,.TRUE.,.FALSE./
      call FA239(LDA1, IDA, IDA2)
      do i=1,16
         if (LDA1(i) .xor. res(i)) then
            write(6,*) LDA1
            stop
         endif
      enddo
      write(6,*) "ok"
      end

      SUBROUTINE FA239(LDA1,IDA,IDA2)
      LOGICAL*8  LDA1(16)
      INTEGER*8  IDA(16),IDA2(16)
      LDA1 = BTEST ( IDA  , IDA2)
      END SUBROUTINE
