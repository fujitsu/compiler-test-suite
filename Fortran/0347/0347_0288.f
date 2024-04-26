      real*4  a(20,20),b(20,20),c(20,20),d(20,20)
      integer*4 l(20)
      data  a,b,c,d/400*1.,400*2.,400*3.,400*3.1/,nn/17/
      do 10 i=1,20
        l(i)=21-i
        d(i,i)=float(i)
 10   continue
      do 20 k=2,nn
       d(l(k),l(1)-k)=a(l(k),5)+c(k,l(k))
       do 20 i=2,nn
        a(i,l(i))=b(l(i),i)*2.0-d(l(i),k)
        do 20 j=2,nn
          b(i,j)=c(i+1,j)+a(i,j)
 20   continue
      do 30 k=2,nn+1
      do 40 i=2,nn+1
       b(l(k),l(i))=d(i,j)*c(l(k),i)
       do 40 j=2,nn+1
         c(i,j+l(20)-1)=a(i-l(20),j+l(19)-1)+b(i,j)
 40    continue
       a(k,k)=c(l(k)-1,5)-d(k,k)
 30   continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      write(6,*) ' c= ',c
      stop
      end
