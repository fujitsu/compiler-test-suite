      parameter(n=100)
      logical l(n)
      real    a(n)
      real    ans

      do 1 i=1,n
        l(i)= mod(i,2).eq.0
        a(i)= i*i
1     continue

      ans=a(1)
      do 10 i=1,n
        if(l(i)) then
          if( a(i).lt.ans ) then
            ans=a(i)
          endif
        endif
10    continue

      write(6,*) ' ans= ',ans
      stop
      end
