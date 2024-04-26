      program main
      dimension  a(10),b(10),l(10),c(20)
      equivalence  (a(1),c(11))
      data  b/10*1./,c/10*2.,10*3./
      do 10 i= 1,10
  10    l(i) = i
      do 20 i=1,10
  20    a(l(i)) = a(l(i)) + b(i)
      do 30 j=1,10
        ip = j+l(j)
  30    c(j) = c(ip) + b(j)
      do 40 k=1,10
  40    a(k) = b(k) + c(k)
      n = 1
      do 50 i=11,20
        c(n) = c(i) + b(n)
  50    n = n + 1
      write(6,*) ' a = ',a
      write(6,*) ' c = ',c
      stop
      end
