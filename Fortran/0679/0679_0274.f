      real*8  q1(4,4),q2(4,4)
      data q2/16*1.0/,q1/16*0.0/
      do 10 j=1,4
        do 10 i=1,4
          q1(i,j)=q2(i,j)
  10  continue
      write(6,*) q1
      stop
      end
