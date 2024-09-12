      program main
      implicit  real*8(a-h)
      dimension  a(20,20),b(20,20),c(20,20)
      dimension  d1(20),d2(20)
      data  a,b,c/400*1.d0,400*2.d0,400*3.d0/
      data  d1,d2/20*5.d0,20*4.d0/
      data  n1/10/,dy/2.d0/
      do 10 k=1,10
       do 20 i=1,n1
        do 20 j=i,n1
         a(i,j) = a(i+n1,j) + b(i+n1,j)
         b(i,j) = c(i,i) * 2.d0
         c(i,j) = d1(j)*d2(j)
  20   continue
       d1(i) = d1(i)+dfloat(i)
       d2(i) = d2(i)+dy
  10  continue
      write(6,*) ' a = ',((a(i,j),i=1,5),j=1,5)
      write(6,*) ' b = ',((b(i,j),i=1,5),j=1,5)
      write(6,*) ' c = ',((c(i,j),i=1,5),j=1,5)
      stop
      end
