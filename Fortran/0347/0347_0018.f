      dimension a(10,10),b(10,10),c(10,10),d(10,10),e(10,10),f(10,10)
      data a/100*1.0/,b/100*2.0/
      data c/100*3.0/,d/100*4.0/
      data e/100*5.0/,f/100*6.0/
      s=0
      do 10 i=1,10
       do 10 j=1,10
  10    a(i,j)=b(i,j)+c(j,i)
      do 20 i=1,10
       t=a(1,i)
       do 20 j=1,10
        d(i,j)=b(j,i)/t
  20  continue
      do 30 i=1,10
       t=e(1,i)
       do 31 j=1,10
        f(i,j)=b(j,i)-t
  31   continue
  35  continue
  30  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      write(6,*) e
      write(6,*) f
      write(6,*) t
      stop
      end
