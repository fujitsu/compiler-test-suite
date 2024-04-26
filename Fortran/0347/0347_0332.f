      real*4    a1(20),a2(20),a3(20)
      real*8    d1(20),d2(20),d3(20)
      complex*8 c1(20),c2(20),c3(20)
      real*4    b1(20,20),b2(20,20)
      integer*4 l(20)
      data  nn/17/,n1,n2/1,2/
      data  a1,a2,a3/60*1./
      data  b1,b2/400*1.,400*2./
      data  c1,c2,c3/60*(1.,2.)/
      data  d1,d2,d3/60*1.d0/
      do 10 i=1,20
 10     l(i)=21-i
      do 20 i=2,nn
       nx=i+1
       a1(i)=a1(nx)+a2(i)
 20   continue
      do 30 i=2,nn
       nx=l(i)+1
       a3(l(i))=a3(l(i)-1)*a2(nx)
       a2(nx-1)=a1(l(i))
 30   continue
      do 40 j=2,nn
       do 40 i=2,nn
         b1(i,j)=b1(i,j+1)+b2(i+1,j)
         b2(i,j)=a1(i)-b2(i-1,j)
 40   continue
      do 50 i=2,nn
        c1(i)=c1(i+n1)+c2(i+n2)
        c2(i-1)=c3(i+n1)+c1(i+n1)
 50   continue
      do 60 i=2,nn
        d1(i)=d1(i+1)+d2(i+n1)*d3(l(i))
        d3(l(i)-1)=d2(i-1)+d1(i+1)
 60   continue
      write(6,*) a1
      write(6,*) b1
      write(6,*) c1
      write(6,*) d1
      write(6,*) a2
      stop
      end
