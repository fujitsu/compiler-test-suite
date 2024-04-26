      dimension a(30),b(30),c(30)
      data a/30*3.0/,b/30*1.0/,c/30*2.0/
      do 10 i=2,10
        a(2*i) = a(2*i+1) + b(i)
        b(i+10)= c(i+10) + 1.0
        c(i) = b(i) * 2.0
  10  continue
      write(6,*) ' *** no.01 *** '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      do 20 j=5,15
        a(10) = b(j+1) + 1.0
        c(20) = a(20) + b(j)
        b(j-1)= c(2) + b(j)
 20   continue
      write(6,*) ' *** no.2 *** '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      do 30 k=5,15
        a(k+1) = b(k) * 2.0
        b(1) = c(15) + a(k)
        c(k) = a(30) + b(k-1)
        a(16) = c(k-1) - 1.0
 30   continue
      write(6,*) ' *** no.03 *** '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
