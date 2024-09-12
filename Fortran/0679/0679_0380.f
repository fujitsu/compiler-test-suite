      dimension a(10),b(10),c(10),d(10),e(10),f(20)
      equivalence (a(1),f(1)),(s1,f(11)),(s2,f(10))
      data d/10*2/,e/10*3/,b/1,2,3,4,5,6,7,8,9,10/,s1/4/
      c=0

      do 10 i=2,10
        a(i) = a(i) + b(i)
        if ( s1 .gt. 3 ) then
          c(i) = d(i) + e(i) + c(i-1)
        endif
 10   continue
      write(6,*) a,c
      do 20 i=2,10
        a(i) = a(i) + b(i)
        if ( s2 .gt. 3 ) then
          c(i) =  e(i) + c(i-1)
        endif
 20   continue
      write(6,*) a,c
      stop
      end
