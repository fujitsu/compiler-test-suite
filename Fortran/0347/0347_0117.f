      program main
      dimension  a(20),b(20),c(20)
      data  a,b,c/20*1.,20*2.,20*5./
      data  n1,n2/1,2/
      n = 2
      do 10 i=2,10
        a(n) = b(n+1) + c(i)
        b(n) = a(n-1) * c(i)
        n = n + n1*n2
 10   continue
      write(6,*) a,b
      n = 2
      do 20 i=2,10
        a(n) = b(n+1) + c(i)
        b(n) = a(n-1) * c(i)
        n = n + n2
 20   continue
      write(6,*) a,b
      stop
      end
