      program main
      real a(10),b(10),c(10),d(10,10),e(10,10)
      real x(10),y(10),z(10)
      data a/10*1.0/
      data b/10*1.0/
      data c/10*1.0/
      data d/100*1.0/
      data e/100*1.0/
      data x/10*1.0/
      data y/10*1.0/
      data z/10*1.0/

      do 12 k=1,10
      do 10 i=1,10
        a(i) = b(i)
        do 11 j=1,10
          d(i,j) = e(i,j) + a(i) + b(i)
 11     continue
        b(i) = a(i) + c(i)
 10   continue
 12   continue
      write(6,*) a
      stop
      end
