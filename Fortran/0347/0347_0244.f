      program main
      real*4  a(20,20),b(20,20),c(20,20),d(20,20)
      data  a,b/400*1.0,400*2.0/,nn/16/
      data  c,d/400*3.0,400*4.0/
      do 999 iii=1,3
        do 10 i=2,nn
          a(i,nn)=float(i)
          do 20 j=2,i+1
            d(i,j)=b(i,j)+a(j,i)/2.0
  20      continue
          c(i,i)=d(i,1)+b(i,j)
  10    continue
        do 30 i=nn,2,-1
          d(i,1)=a(i,1)-1.0
          do 40 j=2,i+1
            b(i,j)=d(j,nn-1)-a(i,j)/c(i,j)*b(i,j+1)
  40      continue
  30    continue
        do 50 i=2,nn
          do 60 j=nn,i+1,-1
            a(j,i)=b(j,i)+c(j,i)
  60      continue
          c(i,1)=a(i,2)+d(i,2)
  50    continue
        do 70 i=nn,2,-1
          do 80 j=nn,i+1,-1
            a(j,i)=d(j,i)+b(j,i)
  80      continue
          b(i,2)=c(i,2)+a(i,2)
  70    continue
 999  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
