      real*4  a(20,20),b(20,20),c(20,20)
      integer*4 l(20)
      data  a,b,c/400*1.,400*2.,400*3./,nn/18/
      do 10 i=1,20
        l(i)=i
 10   continue
      do 20 k=2,nn/2
      do 20 i=2,nn
       do 20 j=2,nn
         b(i,l(j))=b(i,l(j))+c(i,j)
         a(i,l(j))=a(i,l(j))+c(i,j)
         c(l(i),l(j))=b(i,l(j-1))-a(i,l(j))
 20   continue
      do 30 i=2,nn-1
       do 30 j=2,nn
         a(l(i-1),l(j))=b(i,l(j+1))*c(i,j+1)
         c(l(i-1),l(j))=a(i,l(j-1))-c(i,j)
         b(l(i-1),l(j))=b(i,l(j-1))-a(i,l(j))
 30   continue
      write(6,*) ' a=',a
      write(6,*) ' b=',b
      write(6,*) ' c=',c
      stop
      end
