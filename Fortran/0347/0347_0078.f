      dimension a(30),b(30),c(30)
      data    a/30*1.0/,b/30*2.0/,c/30*3.0/
       do 10 i=2,28,2
        a(i) = b(i+1) - c(i+2)
        b(4)= a(3) + c(i+1) + a(i-1)
        c(i) = b(i-1) * a(2)
 10    continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (a(i),i=5,15)
      write(6,*) ' **  b result value  ** '
      write(6,*) (b(i),i=2,12)
      write(6,*) ' **  c result value  ** '
      write(6,*) (c(i),i=4,14)
      stop
      end
