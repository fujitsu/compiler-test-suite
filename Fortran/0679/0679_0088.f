      program main
      real    a(10,6,6),b(10,6,6),c(991:1000,6,6),d(20:25,991:1000)
      data    a,b,c/780*3.5,300*-9.125/
      do 10 i=991,1000
       l=i/2
       do 11 j=1,6
        m=i/j
        do 12 k=1,6
         a(i-990,k,j)=(b(i-990,k,j)+c(i,k,j))*m
  12    continue
  11    d(j+19,i)=m+float(l)
  10  continue
      write(6,*) a,d,m,l

      do 110 i=991,995
       l=i/2
       do 111 j=1,6
        m=i/j
        do 112 k=1,6
         a(i-990,k,j)=(b(i-990,k,j)+c(i,k,j))*m
  112   continue
  111   d(j+19,i)=m+float(l)
  110 continue
      write(6,*) a,d
      stop
      end
