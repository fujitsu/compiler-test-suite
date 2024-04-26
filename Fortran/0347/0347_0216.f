      dimension a(10),b(10),c(10)
      do 10 i=1,10
       a(i)= i
       b(i)= 100-i
  10  continue
      do 20 i=1,10
       t=a(i)+b(i)
       c(i)=t
  20  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) t
      stop
      end
