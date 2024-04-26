      dimension a(20),b(20),c(20),d(20)
      data a/20*3.0/,b/20*1.0/,c/20*2.0/,d/20*3.0/
      do 10 i=5,15
        a(i+3) = b(i+2) + c(6)
        c(i+1) = a(10) + c(i)
        a(18) = c(6) + b(i+2)
        d(i)  = a(5) + 2.0
 10   continue
      write(6,*) ' ***** no.01 ***** i ** '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      do 20 j=5,10
        a(18) = b(j+2) * c(j-1)
        c(j+2) = b(j+3) + d(j+1)
        b(12) = a(2*j-2) + c(12)
        d(6) = a(2*j) + d(j-2)
 20   continue
      write(6,*) ' **** no.02 **** j **'
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      do 30 k=5,15
        a(k) = b(17) + c(k-1)
        b(k+2) = a(15) + d(k+2)
        c(4) = b(7) *  d(k)
        d(17) = a(5) + b(k)
 30   continue
      write(6,*) ' **** no.03 **** k **'
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
