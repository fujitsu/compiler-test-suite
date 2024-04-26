      program main
       real * 4 x/9/,a(10),b(10), av(10)
       data     a,b,av/30*1/, n/10/
      do  10 j=1,3
    9 continue
        a(j) = n - x
       do 10 i=1,n
        x = a(i) * b(i)
        if(x.eq.10000) goto 9
        a(i) = x - a(i)
        av(i) = sqrt(abs(x))
   10 continue
      write(6,*) ' ## a ##'
      write(6,20)  a
      write(6,*) ' ## av ##'
      write(6,20)  av
   20 format(' ',7f10.5)
      end
