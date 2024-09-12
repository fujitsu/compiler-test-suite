      real a(1000),b(1000),c(1000),x(1000)
      do 1 i=1,1000
        b(i)=i
  1     c(i)=i
      do 10 i=1,1000
        a(i)=b(i)+c(i)
        b(i)=sin(a(i))
        x(i)=b(i)+c(i)
  10  continue
      print *,x
      stop
      end
