      real*4  a(20,20),b(20,20),c(20,20),d(20,20)
      integer*4  l(20)
      data  a,b,c,d/400*1.,400*2.,400*3.,400*3.1/,nn/17/
       do 10 i=1,20
 10      l(i)=21-i
       do 30 i=2,nn
        c(i,3)=0.1
        do 20 j=2,i+1
          b(i,j)=c(3,i)+a(i,j-1)
          a(j,i)=b(i,j)*2.0-d(3,i+1)
 20     continue
        d(i,2)=b(i,2)*sqrt(c(i,1))
 30   continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      stop
      end
