      real*4    a(10),b(10),c(10),d(10)
      logical*4 m(10)/5*.true.,5*.false./
      data      a/1,2,3,4,5,6,7,8,9,10/,b/10*1.5/,c/10*2.5/,d/10*3.5/
      data      n/10/,c1/2.0/

      do 10 i=1,n
        s = a(i)
        if (m(i)) then
          c(i) = s
          s = b(i) + 1.0
          d(i) = s + c(i)
        else
          s = c(i) + b(i)
          a(i) = s + i
        endif
        s = s + b(i)
        a(i) = s*c1
 10   continue
      write(6,*) a,c,d
      stop
      end