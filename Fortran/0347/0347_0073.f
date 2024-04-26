      dimension a(30),b(30),c(30),d(30)
      data a/30*3.0/,b/30*1.0/,c/30*2.0/,d/30*3.0/
      n = 2
      do 10 i=1,10
        a(n*i+1) = a(n*i+1) + b(n*i+1)
        b(n*i) = c(n*i+1) * d(n*i-1)
 10   continue
      write(6,*) ' ***** no.01 ***** '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      m = 20
      n = 5
      do 20 j=5,m
        a(j+n) = b(j+n) + d(j+n+1)
        c(j+n+2) = a(j+n-1) * b(j+n)
        d(j-3) = c(j+n) - a(j+n-3)
        b(n) = a(n-1) + 3.0
 20   continue
      write(6,*) ' **** no.02 **** '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
