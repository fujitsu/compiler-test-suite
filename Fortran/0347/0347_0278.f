      real*4  a1(20),b1(20),c1(20)
      real*4  a2(20,20),b2(20,20),c2(20,20)
      integer*4  l(20)
      data   a1,b1,c1/60*1./
      data   a2,b2,c2/400*1.,400*2.,400*3./,n/20/
      do 10 i=1,n
  10    l(i)=i

      do 20 i=1,15,2
        n1=i+1
        n2=n1+1
        a1(n1)=b1(n2)+c1(i)
        b1(n2)=a1(n1)+c1(i)
  20  continue

      do 30 j=3,20,2
       n1=j-1
       n2=n1-1
       do 30 i=2,20,2
         c2(i,n1)=c2(21-i,n2)+a2(i,j-1)
         a2(i,n2)=b2(i-1,j)*2.0+b2(i,n1)
         b2(i,j)=a2(i,n1)-c2(i,j)
  30  continue
      write(6,*) ' a1= ',a1
      write(6,*) ' b1= ',b1
      write(6,*) ' c1= ',c1
      write(6,*) ' a2= ',((a2(i,j),i=11,20),j=11,20)
      write(6,*) ' b2= ',((b2(i,j),i=11,20),j=11,20)
      write(6,*) ' c2= ',((c2(i,j),i=11,20),j=11,20)
      stop
      end
