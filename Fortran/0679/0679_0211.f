      program main
      implicit  real*8(a-h)
      dimension  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.d0,400*2.d0,400*3.d0/
      data  n1/10/
      do 20 i=1,n1
       n = i
       do 20 j=2,n1
        a(i,j) = a(i+n1,j) + b(i+n1,n)
        b(i,n) = c(i,n) * 2.d0
        c(i,n) = b(i,n)-a(i,j-1)
        n = n+1
  20  continue
      write(6,*) ' a = ',((a(i,j),i=1,5),j=1,5)
      write(6,*) ' b = ',((b(i,j),i=1,5),j=1,5)
      write(6,*) ' c = ',((c(i,j),i=1,5),j=1,5)
      stop
      end
