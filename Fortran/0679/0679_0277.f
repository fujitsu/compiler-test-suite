      dimension a1(10),a2(10),a3(10),b(10),c(10)
      logical*4 l1(10)
      data l1/5*.true.,5*.false./
      data b/10*1.0/,c/10*2.0/
      data a1,a2,a3/30*0.0/,n/5/
      do 10 i=1,10
        if (l1(n)) then
          a1(i) = b(i)
        endif
        if (l1(n)) then
          a2(i) = c(i)
        endif
        if (l1(n)) then
          a3(i) = b(i) + c(i)
        endif
  10  continue
      write(6,*) a1
      write(6,*) a2
      write(6,*) a3
      stop
      end
