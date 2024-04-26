      real*4  a(100),b(100),c(100),d(100)
      integer*4  l(100)
      data  a,b,c,d/100*1.,100*2.,100*3.,100*3.1/,nn/90/
      data  n1,n2,n3/1,2,3/
       do 10 i=1,100
 10      l(i)=i
       do 30 i=2,nn
        c(i+n3-n1+n2)=0.1
        do 20 j=2,i-1
          b(j)=c(i)+a(j-1)
          a(j)=b(i)*2.0-d(i+1)
 20     continue
        d(i)=b(i+l(1))*sqrt(c(i))
 30   continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      write(6,*) ' c= ',c
      write(6,*) ' d= ',d
      stop
      end
