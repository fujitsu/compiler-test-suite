      program main
      real*8    a(10),b(10)
      do 10 i=1,10
       a(i)=1.0/i
       b(i)=a(i)*2.5
  10  continue
      do 20 i=1,10
  20   a(i)=sngl(a(i)+b(i))
      write(6,600) a
      write(6,600) b
  600 format(1h ,3(1h ,d16.9))
      stop
      end
