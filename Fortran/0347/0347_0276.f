      real*4  a1(20),b1(20),c1(20)
      real*4  a2(20,20),b2(20,20),c2(20,20)
      integer*4  l(20)
      data   a1,b1,c1/60*1./
      data   a2,b2,c2/400*1.,400*2.,400*3./,n/20/
      do 10 i=1,n
  10    l(i)=i

      do 20 i=1,n/2
        a1(n-i+1)=b1(i)+c1(i)
        b1(i)=a1(l(i))+c1(i)
  20  continue

      do 30 j=1,10
       do 30 i=1,10
         c2(i,j)=c2(l(21-i),l(j))+a2(i,j+1)
         a2(i,l(j))=b2(i,j)*2.0
  30  continue
      write(6,*) ' a1=',a1
      write(6,*) ' b1=',b1
      write(6,*) ' c1=',c1
      stop
      end
