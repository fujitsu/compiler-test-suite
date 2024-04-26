      program main
      real*4  a(20),b(20),c(20)
      data  a,b,c/60*1./
      n=1
      do 10 i=1,20
        a(i)=b(n)+c(i)
        n=n+1
 10   continue
      n=21
      do 20 i=1,15,2
       n=n-1
       b(n)=b(n)+c(1+i)*a(i+2)
 20   continue
      write(6,*) a
      write(6,*) b
      stop
      end
