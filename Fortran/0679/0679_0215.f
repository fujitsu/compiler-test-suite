      program main
      real*4  a(20,20),b(20,20),c(20,20,20)
      data  a/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,390*1./
      data  b,c/10.,9.,8.,7.,6.,5.,4.,3.,2.,1.,390*2.,8000*3./
      do 10 i=1,15
       do 10 j=1,15
         a(i,j) = a(i+1,i)+b(i,j)*c(i,j,i)
  10  continue
      do 20 i=1,15
       do 20 j=1,i
         b(i,j) = b(i+1,i)-a(i,j)+c(i,i,j)
  20  continue
      do 30 k=1,15
       do 30 j=2,15
        do 30 i=1,15
         c(k,j,i) = a(k,j)*b(k,i)
         b(k,i) = c(k,j-1,j)+a(k,i)
  30  continue
      write(6,*) ' a= ',((a(i,j),i=1,10),j=1,5)
      write(6,*) ' b= ',((b(i,j),i=1,10),j=1,5)
      write(6,*) ' c= ',(((c(i,j,k),i=1,5),j=1,5),k=1,5)
      stop
      end
