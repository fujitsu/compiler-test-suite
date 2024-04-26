      dimension a(20),b(20),c(20)
      data   a,b,c/60*1./
      inv = 10
      do 10 i=1,10
        a(i+inv) = a(i+inv) + b(inv+i)
        b(inv+i) = c(i) * 2
        inv = inv -1
  10  continue
      write(6,*) a,b
      stop
      end
