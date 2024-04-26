      program main
       real * 4 x,a(10),b(10), av(10)
       data     a,b,av/30*1/, n/10/
       do 10 i=1,n
        x = a(i) * b(i)
        if(x.eq.0.0) goto 99
        av(i) = sqrt(abs(x))
   10 continue
   99 continue
      write(6,*) x
      end
