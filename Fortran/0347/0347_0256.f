      program main
      real*4  a1(20,20),b1(20,20),c1(20,20),d1(20,20)
      real*4  a2(20,20),b2(20,20),c2(20,20),d2(20,20)
      integer*4 l(20)
      data  a1,b1,c1,d1/400*1.,400*2.,400*3.,400*4./,nn/18/
      data  a2,b2,c2,d2/400*1.,400*2.,400*3.,400*4./
      data  n1/1/,n2/2/
      do 10 i=1,20
        l(i)=21-i
 10   continue
      do 20 i=2,nn
       do 20 j=2,nn
         rx=a2(i,l(j))+d2(i,l(j))
         a1(l(i),l(j))=b1(l(i),l(j))+c1(l(i-1),l(j-1))
         b1(l(i),l(j))=c1(l(i),l(j))+d1(l(i),l(j))
         c1(l(i),l(j))=b2(l(i),l(j))+a1(l(i+1),l(j+1))
         a2(l(i),l(j))=rx*c2(l(i),l(j))
 20   continue
      do 50 j=2,nn
       do 30 i=2,l(j)
         rx=a1(i,j)-c2(i,j)*a2(i,j)
         ry=b1(i,j)-d2(i,j)*d1(i,j)
         d2(l(i),l(j-1))=c1(l(i),l(j))+amin1(rx,ry)
         c2(l(i+1),l(j))=d1(l(i),l(j))+amax1(rx,ry)
 30    continue
       nxx=nn/2
       do 40 i=2,nxx
         d1(i,j)=d1(i*2-1,j)+d2(i,j)
         a2(l(i-1),l(j))=c1(l(i),l(j))+b2(i+n2,l(j))
         b2(i+n1,l(j))=d1(l(i),l(j))+a1(l(i+1),l(j+1))
 40    continue
 50   continue
      write(6,*) ' a1=',((a1(i,j),i=1,10),j=1,10)
      write(6,*) ' b1=',((b1(i,j),i=1,10),j=1,10)
      write(6,*) ' c1=',((c1(i,j),i=1,10),j=1,10)
      write(6,*) ' d1=',((d1(i,j),i=1,10),j=1,10)
      write(6,*) ' a2=',((a2(i,j),i=1,10),j=1,10)
      write(6,*) ' b2=',((b2(i,j),i=1,10),j=1,10)
      write(6,*) ' c2=',((c2(i,j),i=1,10),j=1,10)
      write(6,*) ' d2=',((d2(i,j),i=1,10),j=1,10)
      write(6,*) ' rx=',rx
      write(6,*) ' ry=',ry
      stop
      end
