      integer*4  i, j, n, sum
      integer*4  m1(100)
      integer*4  cal( 10)
      m1=1

      sum=0
      n=m1(3)
      do 300 i=3, 30, n
         do 300 j=3, 30, n
            sum=sum+i+j
  300 continue
      cal(3)=sum/100+mod(sum,100)
      write(6,*)"cal(3)=",cal(3)

      stop
      end
