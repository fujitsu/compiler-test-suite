      dimension a1(10),a2(10),a3(10),b(10),c(10)
      data b/10*1.0/,c/10*2.0/
      data a1,a2,a3/30*0.0/,n/10/
      do 10 j=1,10
        do 20 k= 1,10
          a1(k) = b(k)
  20    continue
        do 30 i=1,n
          a2(i) = b(i) + c(i)
  30    continue
        s = 0.0
        do 40 i=1,n
          s = s + b(i)
          a3(i) = c(i)
  40    continue
  10  continue
      write(6,*) s
      write(6,*) a1
      write(6,*) a2
      write(6,*) a3
      stop
      end
