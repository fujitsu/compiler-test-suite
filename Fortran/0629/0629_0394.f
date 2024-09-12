      integer  IDA10(10)/10*1/,LD10(10)/10*0/
      CALL  SUB1(IDA10,LD10,10)
      WRITE(6,*) IDA10
      WRITE(6,*) LD10
      STOP
      END

      SUBROUTINE SUB1(IDA10,LD10,NN)
      integer  IDA10(10),LD10(10)
      DO 10 I=1,NN
         LD10(I)=0
         IDA10(i)=4
         DO 10 J=1,10
            LD10(i) = IDA10(j)
  10   CONTINUE
      RETURN
      END
