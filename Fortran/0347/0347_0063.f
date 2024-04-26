      dimension a(30),b(30),c(30),d(30)
      data  a/30*5.1/,b/30*2.2/,c/30*3.1/,d/30*4.2/
      do 10 i=10,3,-1
        d(2*i) = a(2*i+3) + c(3*i)
        b(2+i) = b(3+i) * d(i+1)
        c(2*i-3)= a(i+3) / 2.0
        a(2*i) = c(i-1) - b(i-2)
 10   continue
      write(6,*) (a(i),i=5,20)
      write(6,*) (b(i),i=5,20)
      write(6,*) (c(i),i=3,18)
      write(6,*) (d(i),i=5,20)
      do 20 j=13,5,-2
        c(j+1) = a(j-1) * d(j-1)
        d(2*j+1) = a(j-1) * b(j-1)
        a(j+3) = b(2*j+1) + c(j)
 20   continue
      write(6,*) (a(i),i=8,20)
      write(6,*) (b(i),i=8,20)
      write(6,*) (c(i),i=10,25)
      write(6,*) (d(i),i=8,23)
      do 30 j=25,5,-1
        b(j+3) = c(j) + a(j+2)
        a(j+2) = d(3+j) + c(j-1)
        d(j+2) = a(j) + b(j-1)
        c(j+1) = b(j+4) + a(j+3)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
