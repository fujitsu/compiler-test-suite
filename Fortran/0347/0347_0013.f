      program main
       real * 4 x,a(10),b(10), av(10)
       data     a,b,av/30*1/, n/10/
      x = a(3) * b(5)
      goto 11
   11 continue
      do 10 i=1,n
       if(x.eq.0.0) goto 99
       av(i) = sqrt(abs(x))
   10 continue
   99 continue
      write(6,*) x
      end
