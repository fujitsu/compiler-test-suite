      dimension a(10),b(10),c(10),d(10),e(10),f(10)
      data b/10*1.0/,c/10*2.0/,d/10*3.0/,e/10*4.0/,f/10*5.0/
      a=0
      do 10 i=1,10
        if ( a(i) .eq. 9.0 ) then
          a(i)=a(i)+b(i)
          b(i)=c(i)+d(i)
          c(i)=e(i)+f(i)
          a(i)=a(i)+b(i)
          b(i)=c(i)+d(i)
          c(i)=e(i)+f(i)
        endif
  10  continue
      write(6,*) a,b,c,d,e,f
      stop
      end
