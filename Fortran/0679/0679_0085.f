      program main
      real    a(6,6,6),b(6,6),c(6)/1,2,3,4,5,6/,d(9,9,2:9)/648*3.5/
      complex *16 cb(9,10,10,10)/4500*3.,4500*7./,ct
      data    n/5/
      do 10 i=1,6
       s=i+c(i)
       do 11 j=1,6
        b(i,j)=s*s
        do 12 k=1,6
         a(i,j,k)=s/8.
  12    continue
  11   continue
  10  continue

      write(6,15) a
  15  format(7(f10.5))
      write(6,15) b

      do 110 i=1,n+1
       s=i+c(i)
       do 111 j=1,6
        b(i,j)=s*s-2
        do 112 k=1,6
         a(i,j,k)=s/8.-3
 112    continue
 111   continue
 110  continue

      write(6,15) a
      write(6,15) b

      do 200  i=2,10
       do 210  j=2,10
        s=i*j/2
        do 220  k=5002,5009
         ct=d(i-1,j-1,k-5000)/4.
         do 230  l=1,5
          cb(k-5001,l,j,i)=ct*cb(k-5000,l,j-1,i-1)-s
 230     continue
 220    continue
 210   continue
 200  continue

      write(6,2) cb,ct
   2  format(2(2(2f10.5)))

      stop
      end
