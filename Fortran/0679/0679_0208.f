      program main
      implicit  real*8(a-h)
      dimension  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.d0,400*2.d0,400*3.d0/
      data  n1,n2/10,10/,dy/2.d0/
      do 10 i=1,n1
       do 10 j=i,n2
         a(i,j) = a(i+n1,j+n2) + b(i+n1,j)
         b(i,j) = c(j,i) * 2.d0
         c(i,j) = float(i)*dy
  10  continue
      write(6,*) ' a = ',((a(i,j),i=1,5),j=1,5)
      write(6,*) ' b = ',((b(i,j),i=1,5),j=1,5)
      write(6,*) ' c = ',((c(i,j),i=1,5),j=1,5)
      stop
      end
