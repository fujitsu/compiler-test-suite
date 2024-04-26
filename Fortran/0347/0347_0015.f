      dimension a(10),b(10),c(10)
      do 10 i=1,10
       a(i)=i
       b(i)=i*2
       c(i)=a(i)+b(i)
   10 continue
      write(6,600) (a(i),i=1,10)
      write(6,600) (b(i),i=1,10)
      write(6,600) (c(i),i=1,10)
 600  format(1h ,5f10.5)
      stop
      end
