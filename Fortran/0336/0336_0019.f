      dimension a2(10),c(10)
      data a2/10*3./
      data c/10*2./
      do 32 i = 2,10
        b = a2(i)
        b = b + c(i-1)
        c(i) = b
   32 continue
      write(6,*) c
      end
