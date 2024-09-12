      program main
      real*4  a(10,10),b(10,10)
      data  a,b/90*1.,1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,100*2./
      do 10 i=1,9
       do 10 j=1,9
         a(i,j) = a(i+1,10)+b(i,j)
  10  continue
      do 20 i=1,9
       do 20 j=1,9
         b(i+1,j) = b(i,10)+a(i,j)
  20  continue
      write(6,*) ((a(i,j),i=1,10),j=1,5)
      write(6,*) ((b(i,j),i=1,10),j=1,5)
      stop
      end
