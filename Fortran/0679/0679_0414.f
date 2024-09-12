      dimension a1(10),a2(10),c(10),d(10)
      data a1/10*1.0/,a2/10*3./,c/10*2./,d/10*1./
      do 32 i = 2,10
        b    = .3* a2(i)
        b    = b - a1(i)
        b    = b *c(i-1) + sqrt(d(i))
        c(i) = b
   32 continue
      write(6,*) c,' i = ',i
      end
