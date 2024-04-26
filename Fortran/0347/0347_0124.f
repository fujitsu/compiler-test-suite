      dimension a(10),b(10),c(10)
      data    a/10*1.0/,b/10*2.0/,c/10*3.0/,n/2/

       do 10 i=2,5
        a(i+n) = b(i+3) - c(i*n)
        b(i+n)= a(i) + c(i+1)
        c(i) = b(i-1) * a(i-1)
 10    continue
      write(6,*) ' **  a result value  ** '
      write(6,*) a
      write(6,*) ' **  b result value  ** '
      write(6,*) b
      write(6,*) ' **  c result value  ** '
      write(6,*) c
      stop
      end
