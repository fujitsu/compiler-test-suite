      real*4    a(10),b(10),c(10),d(10),e(10)/10*0/
      logical*4 m(10)/5*.true.,5*.false./
      data      a/1,2,3,4,5,6,7,8,9,10/,b/10*1.5/,c/10*2.5/,d/10*3.5/
      data      n/10/,c1/2.0/

      do 10 i=1,n
        s = a(i)
        if (m(i)) then
          c(i) = s
          s = b(i)
          d(i) = s + c(i)
        else
          a(i) = s + i
        endif
        e(i) = s
 10   continue
      write(6,*) a,c,d,e
      stop
      end
