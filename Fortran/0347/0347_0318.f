      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/1200*1./,nn/18/
      do 10 i=2,nn
        n1=i+1
 11     n2=i-1
        do 10 j=2,nn
          a(n1,j)=a(i,n2)+b(i,j)*c(i,j)
 10   continue
      do 20 i=2,nn
        n1=i+1
 21     n2=i+2
        n1=n1+1
        do 20 j=2,nn
          b(n1,j)=b(i,n2)+a(i,j)*c(i,j)
 20   continue
      write(6,*) a
      write(6,*) b
      stop
      end
