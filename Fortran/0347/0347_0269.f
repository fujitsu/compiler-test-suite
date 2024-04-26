      real*4  a(20,20),b(20,20),c(20,20),d(20,20)
      integer*4  l(20)
      data  a,b,c,d/400*1.,400*2.,400*3.,400*3.1/,nn/17/
       do 10 i=1,20
 10      l(i)=21-i
       do 30 i=2,nn
        c(i,nn)=0.1
        do 20 j=i,nn
          b(i-1,j)=c(3,i)+a(i,j-1)
          a(j,i)=b(j+1,i)*2.0-d(3,i+1)
 20     continue
        d(i,nn)=b(i,2)*sqrt(c(i,1))
 30   continue
      do 40 i=2,nn
        do 50 j=2,l(i)
          c(j,i)=a(i,j)+b(j,i)
          d(i,j)=c(i+1,j-1)-b(i,j+1)
 50     continue
        a(i,2)=d(2,i)
 40   continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      write(6,*) ' c= ',c
      write(6,*) ' d= ',d
      stop
      end
