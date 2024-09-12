      real*8    a(10),b(10),c(11),d(11)
      logical*4 la(10)
      data la/5*.true.,5*.false./
      data a/10*0.1/,b/10*0.2/,c/11*0.3/,d/11*0./
      do 10 i=1,10
        if ( la(i) ) then
          a(i)   = i
          b(i)   = a(i) + i
          c(i+1) = a(i) + b(i) + i
          d(i)   = sin(c(i))
          d(i+1) = d(i) / a(i) * b(i)
        else
          a(i) = sin(a(i))
          b(i) = sin(b(i))
          c(i) = sin(c(i))
          d(i) = a(i) / b(i) * b(i) + c(i)
        endif
  10  continue
      write(6,1000) a
      write(6,1000) b
      write(6,1000) c
      write(6,1000) d
1000  format(5f15.10/)
      stop
      end
