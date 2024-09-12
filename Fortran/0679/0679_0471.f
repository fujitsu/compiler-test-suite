      real*4    a(10),b(10),c(10),d(10),e(10)/10*0/
      logical*4 m(10)/5*.true.,5*.false./
      data      a/1,2,3,4,5,6,7,8,9,10/,b/10*1.5/,c/10*2.5/,d/10*3.5/
      data      n/10/,c1/2.0/

      do 10 i=1,n
        s1 = a(i)
        s2 = b(i)
        if (m(i)) then
          c(i) = s1 + s2
          s1 = b(i) * s2
          d(i) = s1 + c(i)/s2
        else
          a(i) = s1 + i
          s2   = c(i)
          d(i) = s2 + s1
        endif
        e(i) = s1 + s2
 10   continue
      write(6,*) a,c,d,e
      stop
      end
