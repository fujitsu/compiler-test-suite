      real*4    a1(20),a2(20),a3(20)
      real*4    b1(20,20),b2(20,20),b3(20,20)
      complex*8 c1(20),c2(20),c3(20,20)
      real*8    d1(20),d2(20),d3(20)
      integer*4 l(20)
      data  a1,a2,a3/60*1./
      data  b1,b2,b3/1200*2./
      data  c1,c2,c3/40*(1.,2.),400*(2.,3.)/
      data  d1,d2,d3/60*5.d0/,nn/18/
      do 1 i=1,20
  1     l(i)=21-i
      do 10 i=2,nn
       a1(i)=a2(i+1)+a3(i+2)
 10   continue
      do 20 i=2,nn
       a2(l(i))=a2(l(i)-1)+a3(i)
 20   continue
      do 30 i=2,nn
       do 30 j=2,nn
         b1(i,j)=b1(i-1,j)+b2(i,j+1)
 30   continue
      do 40 i=2,nn
       do 40 j=2,nn
        b3(l(i),j)=b3(l(i)-1,j+1)-b2(i,l(j))
 40   continue
      do 50 i=3,nn
        c1(i)=c2(i+1)-c3(i-1,l(i))
 50   continue
      do 60 i=2,18
        d1(i)=d2(l(i))+d3(i)
 60   continue
      do 70 i=2,nn
        d2(l(i)+1)=d3(i)-d2(1)
 70   continue
      write(6,*) ' a1=',a1
      write(6,*) ' b1=',b1
      write(6,*) ' c1=',c1
      write(6,*) ' d1=',d1
      write(6,*) ' a2=',a2
      write(6,*) ' b3=',b3
      write(6,*) ' d2=',d2
      stop
      end
