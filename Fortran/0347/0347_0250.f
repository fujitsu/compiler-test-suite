      real*4  a(20,20),b(20,20,20),c(20,20)
      integer*4 l(20)
      data  a,b,c/400*1.,8000*2.,400*3./,nn/18/,i1/1/
      do 10 i=1,20
        l(i)=21-i
 10   continue
      do 20 i=2,nn
       n=i/2
       do 20 j=2,l(11)
         b(i,j,2)=b(i,2*j,j)*c(j,i)
         a(i,i)=a(i,i)+c(i,n)
         n=n+i1
 20   continue
      write(6,*) ' a=',(a(k,k),k=2,20)
      write(6,*) ' b=',((b(i,j,2),i=1,10),j=1,10)
      stop
      end
