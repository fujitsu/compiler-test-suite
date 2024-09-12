      dimension a(100) , b(100) , c(100) , d(101) , e(100) ,f(100)
      data a,b,c,d,e,f/601*0/
      logical*4 la(100)
      data la/50*.true.,50*.false./

      do 10 i=1,100,2
        if (la(i)) then
          a(i) =  i
          b(i) =  i + 1.0
          c(i) = a(i) + b(i)
          c(i) = sin(c(i))
          if (c(i).gt.0.5) then
            d(i + 1) = i * 5
            e(i) = 5.0 * 1.0 + 3.0
            f(i) = d(i) + e(i) *e(i) / 5.0
           endif
        endif
  10  continue
      write(6,1000) a
      write(6,1000) b
      write(6,1000) c
      write(6,1000) d
      write(6,1000) e
      write(6,1000) f
1000  format(5f15.6/)
      stop
      end
