      common /blk/  a(20),in1,in2
      real*4  b(20),c(20)
      equivalence  (a(1),b(1))
      do 10 i=1,20
         a(i)=float(i)
         c(i)=float(21-i)
  10  continue
        in1=1
        do 30 j=1,10
          c(j)=c(in1)+1.
          in1=in1+1
  30    continue
        in2=1
  20  continue
        do 40 j=1,10
          c(j)=a(in1)+1.
          in1=in1-1
  40    continue
      write(6,*) ' in1=',in1
      write(6,*) ' in2=',in2
      write(6,*) ' c=',c
      stop
      end
