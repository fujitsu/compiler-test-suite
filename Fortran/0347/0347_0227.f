      program main
      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/4/,n1/5/
      do 30 k=1,nn
      do 10 j=1,20
       do 10 i=1,20
        a(i,j)=b(i,j)+c(i,j)
 10   continue
       n=nn
       do 20 i=1,n1
        a(k+n,2*i-1)=c(2*k-1,i*2-1)+b(i+n,k)
        c(i,i*2)=a(n,k*2)*b(k,1+n)
        n=n+1
 20    continue
 30   continue
      write(6,*) a
      write(6,*) c
      stop
      end
