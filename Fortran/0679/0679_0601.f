      parameter(n=10)
      logical l(n),m(n)
      real a(n),b(n),c(n),d(n),e(n)
      d=0
      e=0

      do 1 j=1,n
        l(j)=j.ne.5
        m(j)=j.ge.7
        b(j)=j*2
        c(j)=j*j
1     continue

      do 10 i=1,n
        if (l(i)) then
           a(i)=b(i)+c(i)
           if (m(i)) then
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
