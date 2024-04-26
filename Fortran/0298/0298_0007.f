      real    ra(10)/10*3/
      logical*8 l1(10)

      do 10 i=1,10
        l1(i)=ra(i).le.2.0
   10   continue
      write(6,*) l1
      stop
      end

