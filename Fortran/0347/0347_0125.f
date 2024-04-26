      dimension a(20),b(20),c(20)
      data    a/20*1.0/,b/20*2.0/,c/20*3.0/,n/2/

       do 10 i=2,7
        a(i*n) = a(i*n-1) / b(i*n)
        b(i+n)= c(i+1) * a(i) * 2
        c(i-n+1) = b(i-1) * a(i-1)
 10    continue
      write(6,*) ' **  a result value  ** '
      write(6,*) a
      write(6,*) ' **  b result value  ** '
      write(6,*) b
      write(6,*) ' **  c result value  ** '
      write(6,*) c
      stop
      end
