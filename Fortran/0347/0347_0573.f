      real*8 a(20),b(20),c(20),rx
      data  a,b,c/60*1.d0/,nn/18/
      do 10 i=2,nn,2
        b(i)=float(-i)
        c(i-1)=float(i)
 10   continue
      rx=1.

      do 20 i=2,nn
        rx = rx*dsign(b(i),b(i))
        rx = rx+c(i)
        a(i)=a(i)+dsqrt(dabs(dmod(rx,c(i))))
 20   continue
      ix=1

      do 30 i=2,nn,2
        ix=ix+int(c(i))
        c(i)= ishft(ix,min(i,3))
        b(i)=b(i-1)+dsin(dfloat(ix))
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
