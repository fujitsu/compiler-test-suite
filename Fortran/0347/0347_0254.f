      real*4  a(20,20),b(20,20),c(20,20),d(2)
      equivalence (d(1),rx),(d(2),ry)
      integer*4 l(20)
      data  a,b,c/400*1.,400*2.,400*3./,d/5.,4./,nn/18/
      do 10 i=1,20
        l(i)=21-i
 10   continue
      do 20 i=2,nn
       do 20 j=2,nn
         rx=a(i,j)+b(i,j)
         ry=b(i,j)+c(i,j)
         a(i,j)=c(i,j)*a(j,i)
 20   continue
      d(1)=b(1,1)
      d(2)=c(1,1)
      do 30 j=2,nn
       do 30 i=2,nn
         d(1)=d(1)+a(i-1,j)
         d(2)=d(2)+c(i,j-1)
         b(i,j)=a(i,j)-b(i,j)
 30   continue
      write(6,*) ' a=',a
      write(6,*) ' b=',b
      write(6,*) ' d=',d
      stop
      end
