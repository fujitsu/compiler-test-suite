      program main
      dimension a(20,20),b(20,20),ll(20)
      dimension c(20),d(20),e(20)
      do 10 i=1,20
      c(i)=i*0.12+i*1.2
      ll(i)=i
      d(i)=i*0.11+i*2.1
      e(i)=1.0
      do 10 j=1,20
      b(i,j)=i+j
  10  a(i,j)=i-j
      j=7
      i=1
      i2=c(3)

      do 30 i=1,10
        e(i)=a(i,j)+b(i,j)
        a(i+i2,j)= c(i)+d(i)
  30  continue
      write(6,1)e,a
      j=7
      n=2
      i1=c(3)
      do 40 i=1,7
        a(i+i1,j)=a(i+4,j)+d(i)
        c(n)=a(i,3)
        n=n+1
  40  continue
      write(6,1) a,c
      j=6
      do 50 i=1,ll(7)
        e(i)=a(i,j)
  50  continue
      write(6,1) e
1     format(8f10.5)
      stop
      end
