      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./,nn/18/
      do 10 j=1,nn
       n=1
       do 10 i=1,nn
        a(i,n)=b(i,j)+c(i,j)
        n=n+1
        b(i,j)=a(i+1,n)*c(i,j)
 10   continue
      n=1
      do 20 i=1,nn
        c(n,i)=c(n,i)+b(i,i)
        n=n+1
        b(i,i)=c(n,i+1)+a(i,i)
 20   continue
      n=1
      do 30 i=1,nn
        a(n,i+1)=c(n,i)+b(2,i)
        n=n+1
        b(i,3)=a(n,i)+c(i,i)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
