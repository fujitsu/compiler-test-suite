      real b(10001)
      b=0
      do 20 i=1,10000
        b(i)=b(i)+1
 20   continue
      write(6,*) b
      end
