      parameter(n=10)
      real x/4.5/,y/13.0/
      real a(n),b(n),c(n),d(n),e(n)

      do 1 j=1,n
        b(j)=j*2
        c(j)=j*j
1     continue

      do 10 i=1,n
        if (x .gt. 0.0) then
           a(i)=b(i)+c(i)
           if (y  .gt. 1.0) then
             d(i)=a(i)
           else
             d(i)=b(i)
           endif
           e(i)=3.0
        else
           a(i)=0.0
        endif
10    continue

      write(6,*) a
      write(6,*) d
      write(6,*) e

      stop
      end
