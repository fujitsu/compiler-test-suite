      program main
      integer*4 mult(10,9),tmult(81),sum,tsum
      do 10 i=1,9
        do 10 j=1,9
           mult(j,i)=i*j
   10 continue
      do 20 i=1,9
        do 20 j=1,9
           tmult(10*(i-1)-(i-1)+j)=mult(j,i)
   20 continue
      do 30 i=1,9
        sum=0
        do 31 j=1,9
           sum=sum+mult(j,i)
   31   continue
        mult(10,i)=sum
   30 continue
      sum=0
      do 40 i=1,9
         sum=sum+mult(10,i)
   40 continue
      tsum=0
      do 50 i=1,81
         tsum=tsum+tmult(i)
   50 continue
      if((sum.eq.tsum).and.(sum.eq.2025)) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
         write(6,*) sum
         write(6,*) tsum
      endif
      stop
      end
