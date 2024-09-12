      real*4  a(10),b(10),c(10)
      logical*4 l(10)
      data  a,b/10*1.,10*2./,l/5*.false.,5*.true./
      data  c/10*1./
      l(10)=.true.

        do 10 i=2,9
          a(i)=c(i)/b(i)
          if (l(i)) then
            a(i)=a(i+1)*b(i)
          endif
  10   continue
      write(6,*) a
      stop
      end
