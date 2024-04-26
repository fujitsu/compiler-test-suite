      real*4  a(20,20),b(20,20),c(20,20)
      integer*4 l(20)
      data  a,b,c/400*1.,400*2.,400*3./,nn/18/
      do 10 i=1,20
        l(i)=21-i
 10   continue
      do 20 i=2,nn
       do 20 j=2,nn
         b(i,l(j))=b(i,l(j))*c(j,i)
         a(i,l(j))=a(i,l(j))+c(i,j)
 20   continue
      write(6,*) ' a=',a
      write(6,*) ' b=',b
      stop
      end
