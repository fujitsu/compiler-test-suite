      program main
      real a(10),b(10),c(10),d(10)
      integer  n/10/
      data a,b,c,d/40*1/
      do 20 j=2,n-1
       do 10 i=2,n-1
        a(i+1) = a(i-1)
        b(i+1) = sqrt(b(j-1)) + a(i+1)
        c(j+1) = sqrt(c(j-1))
        d(i) = a(i)/d(i)
   10  continue
   20 continue
      write(6,*) a,b,c,d
      end
