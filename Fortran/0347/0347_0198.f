      dimension a(20),b(20),c(20)
      data  a/20*1.0/,b/20*2.0/,c/20*3.0/
      n = 3
      do 10 i=1,5
       a(i+3) = b(i+2) + c(n)
       b(i+1) = c(n) *2.0
       c(n-1) = a(i+1) + b(i)
       n = n + 2
 10   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,*)   n
 600  format(2(2x,10f7.3/))
      stop
      end
