      real*4  a(20,20),b(20,20),c(20,20)
      integer*4 l(20)
      data  a,b,c/400*1.,400*2.,400*3./,nn/17/
      do 10 i=1,20
        l(i)=21-i
 10   continue
      do 20 i=1,nn
        a(i,l(i))=b(l(i),i)*2.0
        do 20 j=1,nn
          b(i,j)=c(i,j)+a(i,j)
 20   continue
      do 30 i=2,nn+1
       do 40 j=2,nn+1
         c(i,j+l(20)-1)=a(i+l(20),j+l(19)-1)+b(i,j)
 40    continue
       a(5,i)=c(l(i),5)
 30   continue
      write(6,*) ' a= ',((a(i,j),i=1,10),j=1,10)
      write(6,*) ' b= ',((a(i,j),i=1,10),j=1,10)
      write(6,*) ' c= ',((a(i,j),i=1,10),j=1,10)
      stop
      end
