      real*4 rb(11,10),rc(11,10)
      data rb/110*1./,rc/110*1./
      m=1
      do 43 l=1,10
      do 44 k=1,10
        rb(l,k)=rc(l+m,k)
 44      continue
 43      continue
      write(6,*) 'rb=',rb
      end
