      dimension a(10),b(10),c(10),d(10)
      dimension l(10)
      do 1 i=1,10
       a(i)=i*i
       c(i)=i
       b(i)=c(i)-a(i)
       d(i)=c(i)-a(i)
   1   l(i)=c(i)
      d(1) = 100.
      do 10 i=2,10
        l(i)=c(i)*d(i-1)
        d(i)=1.0/(a(i)-l(i)*b(i-1))
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      write(6,*) l
      end
