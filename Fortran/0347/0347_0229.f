      program main
      real*4  a(20,20),b(20,20),c(20)
      data  a,b/400*1.,400*2./,c/20*3./,nn/10/
      data  it1/1/
      n=1
      do 10 i=1,nn
       n=n+1
       c(n)=c(1)+a(i,n)*b(i,1)
  10  continue
      do 20 i=1,nn
       l=i
       do 20 j=1,10
        a(i,l)=b(i,j)+c(j)
        b(i,j)=a(i,i)*2.-c(i)
        l=l+1
  20  continue
      do 30 k=1,nn
       do 30 j=1,nn
        a(k,j)=a(k,j+it1)+c(j)/float(it1)
        b(k,j)=b(k,j+1)+c(j)
  30  continue
      write(6,*) ((a(i,j),i=1,10),j=1,10)
      write(6,*) ((b(i,j),i=1,10),j=1,10)
      write(6,*) c
      stop
      end
