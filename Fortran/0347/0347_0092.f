      real*4  a(20,20),b(20,20),c(20,20),d(20)
      data   a,b,c/400*1.,400*2.,400*3./,n/1/,nn/15/
      data   d/20*4./
      do 10 i=1,nn
       n=1
       do 20 j=1,15
         n=n+1
         a(j,n) = b(j,i)+1.*c(i,j)
  20   continue
       do 30 j=1,15
        n=n-1
        b(j,i) = a(j,n)+2.*d(j)
  30   continue
  10  continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      stop
      end
