      program main
      implicit  real*8(a-h)
      dimension  a(20,20),b(20,20),c(20,20),d(20,20)
      data  a,b,c,d/400*1.d0,400*2.d0,400*3.d0,400*5.d0/
      data  n1/10/
      do 10 i=1,n1
       a(i,10) = dfloat(i)
       do 10 j=1,n1
        b(i,j) = a(i,j)+c(n1+1,j)
        do 10 k=1,j
          c(k,j) = d(i,k)*2.d0
         do 10 l=k,n1
          d(j,l) = d(k,l) + 1.d0
  10  continue
      write(6,*) ' a = ',((a(i,j),i=1,5),j=1,5)
      write(6,*) ' b = ',((b(i,j),i=1,5),j=1,5)
      write(6,*) ' c = ',((c(i,j),i=1,5),j=1,5)
      write(6,*) ' d = ',((d(i,j),i=1,5),j=1,5)
      stop
      end
