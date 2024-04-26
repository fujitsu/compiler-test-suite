      dimension a(20),b(20),c(20),d(20)
      data a/20*3.0/,b/20*1.0/,c/20*2.0/,d/20*3.0/
      do 10 i=5,15
        a(i+1) = b(i+2) + c(i)
        c(i+1) = a(i+2) - d(i)
        d(i) = d(i) + 2.0
 10   continue
      write(6,*) ' ***** no.01 ***** '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      do 20 j=5,15
        a(j) = a(j+1) * b(j+1)
        b(j) = a(j-1) + c(j)
        c(j) = a(j+1) + 1.0
 20   continue
      write(6,*) ' **** no.02 **** '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
