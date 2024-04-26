      dimension a(30),b(30),c(30),d(30)
      data a/30*3.0/,b/30*1.0/,c/30*2.0/,d/30*3.0/
      n = 2
      do 10 i=20,5,-1
        a(i+n+1) = a(i+n+3) + b(i+n-1)
        b(n+i) = c(n+i+1) * d(n+i-1)
 10   continue
      write(6,*) ' ***** no.01 ***** '
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
      m = 20
      k = 5
      do 20 j=5,15
        a(j+k) = b(j+k) + d(j+k+1)
        d(j-3) = c(j+k) - a(j+k-3)
        b(j+k) = a(j+k-1) + 3.0
 20   continue
      write(6,*) ' **** no.02 **** '
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
 600  format(2x,3(10f6.3/))
      stop
      end
