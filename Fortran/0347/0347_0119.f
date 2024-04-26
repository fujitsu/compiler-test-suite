      program main
      dimension  a(20),b(20),c(20)
      data  a,b,c/20*1.,20*2.,20*5./
      data  n1,n2/1,2/,nn/10/
      n1 = n2*n1 - 1
      n = 1
      do 10 i=2,nn,n2
        a(i) = b(i) + c(n)
        b(i) = a(i) * c(n)
        n = n + n2
 10   continue
      write(6,*) a,b
      n = 1
      do 20 i=2,nn,n1
        a(i) = b(i) + c(n)
        b(i) = a(i) * c(n)
        n = n + n1
 20   continue
      write(6,*) a,b
      stop
      end
