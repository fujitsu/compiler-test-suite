      dimension a(10),b(10),c(10),d(10,10),e(10,20),f(30),g(10),h(10)
      dimension p(10),q(10),r(10),l(10),m1(10),m2(10,20)
      logical*4 la(10),lb(10),lc(10)
      data b/10*1.0/,d/100*2.0/,e/200*3./,f/30*4./,r/10*3./
      data la/5*.true.,5*.false./
      data lb/5*.true.,5*.false./
      data l/1,2,3,4,5,6,7,8,9,10/
      data m1/1,2,3,4,5,6,7,8,9,10/
      data m2/1,2,3,4,5,6,7,8,9,10,190*2/
      data n/5/
      g=0
      p=0
      s=0
      a=0
      c=0
      do 10 j=1,10
        s = 0.0
        do 10 i=1,10
          if ( la(i) ) then
            a(l(i)) = b(i)
            c(i) = d(m1(i),j) + e(j,m2(3,i))
            f(i) = i + c(i)
            lb(i) = c(i) .gt. f(i)
            g(i) = 1.0
            h(n) = b(i) - f(i)
          else
            lc(i) = f(i) .lt. g(i)
            if ( lc(i)) then
              p(i) = sin( r(i))
              q(i) = r(l(i))**i
            else
              s = s + p(i)
            endif
          endif
  10  continue
      write(6,*) a,c,s
      stop
      end
