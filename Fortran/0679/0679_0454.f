      program main
      real    a(10),b(10),c(10),d(10),e(10),f(10),g(10),h(10)
      logical m(10)/10*.true./,m1(10)/10*.true./
      data a/10*0./,b/10*4./,c/10*0./,d/10*9./,e/10*16./,f/10*25./
      data g/10*64./,h/10*36./,n/10/

      do 100 i=1,10
        if(m(i)) a(i) = sqrt(b(i))
        if(m(i)) go to 100
         a(i)=sqrt(b(i))
100   continue

      do 200 i=1,10
        if(m(i)) then
          a(i) = sqrt(b(i))
        endif

        if(m(i)) then
        else
          c(i) = sqrt(d(i))
        endif

        if(m(i)) then
          e(i) = f(i)
        else
          g(i) = sqrt(h(i))
        endif
200   continue

      do 300 i=1,n
        if(i-5) 301,302,303
 301      a(i) = sqrt(b(i))
          go to 300
 302      c(i) = d(i)
          go to 300
 303      e(i) = f(i)
 300  continue

      do 400 i=1,n
        if(m(i)) then
          c(i) = d(i)
        else if(m1(i)) then
          a(i) = sqrt(b(i))
        endif
 400  continue
      write(6,*) '  a = ',a
      stop
      end
