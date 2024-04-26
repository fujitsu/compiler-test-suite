      real*4  a(20,20),b(20,20),c(20,20)
      integer*4 l(20)
      data  a,b,c/400*1.,400*2.,400*3./,nn/18/
      do 10 i=1,20
        l(i)=21-i
 10   continue
      do 20 i=2,nn
       do 20 j=2,nn
         rx=a(i,j)+b(i,j)
         ry=b(i,j)+c(i,j)
         c(i,j)=amax1(rx,ry)-a(i,j)
 20   continue
      rx1=0.0
      ry1=100.0
      do 40 j=2,nn
       rx=0.0
       ry=0.0
       do 30 i=2,nn
         rx=rx+a(j,l(i))
         ry=ry+b(l(i),j)
         b(i,j)=c(i,j)-b(i,j)
         a(j,l(i))=c(l(i),j)*2.0-a(j,l(i+1))
 30    continue
       rx=amax1(rx1,rx)
       ry=amin1(ry1,ry)
 40   continue
      write(6,*) ' a=',a
      write(6,*) ' b=',b
      write(6,*) ' c=',c
      write(6,*) ' rx=',rx
      write(6,*) ' ry=',ry
      stop
      end
