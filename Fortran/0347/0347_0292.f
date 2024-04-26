      real*4  a(20,20),b(20,20),c(20,20),d(20,20)
      data  a,b,c,d/400*1.,400*2.,400*3.,400*3.1/,nn/17/
       do 30 i=2,nn
        d(i,nn)=b(i,nn)*sqrt(c(i,1))
        do 20 j=2,nn
          b(i,j)=c(i+1,j)+a(i,j)
          a(i,j)=b(i,j)*2.0-d(i,j)
 20     continue
 30   continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      stop
      end
