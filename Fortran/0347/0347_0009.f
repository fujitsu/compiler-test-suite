      program main
       real * 4 x,a(10),b(10), av(10)
       data     a,b,av/10*1,10*2,10*3/, n/10/,x/5/
    9 continue
        a(3) = n - x
       do 10 i=1,n
        x = a(i) * b(i)
        if(x.gt.10000) goto 9
        a(i) = x - a(i)
        av(i) = sqrt(abs(x))
   10 continue
      write(6,1) a
      write(6,1) av
    1 format(5f13.7,/,5f13.7)
      end
