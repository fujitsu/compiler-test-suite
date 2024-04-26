      dimension a(30),b(30),c(30),d(30)
      data  a/30*5.0/,b/30*2.0/,c/30*3.0/,d/30*4.0/
      n = 2
      do 10 i=3,10,n
        a(2*i) = b(2*i+3) + c(3*i)
        b(2+i) = a(2*i-1) * c(i) + a(i)
        c(2*i-1)= d(i+3) / 2.0
 10   continue
      write(6,*) (a(i),i=1,11)
      write(6,*) (b(i),i=10,20)
      write(6,*) (c(i),i=5,15)
      write(6,*) (d(i),i=7,17)
      m = 2
      do 20 j=5,10,m
        a(j) = b(j) * c(j)
        b(j+1) = a(j+1) - d(j+3)
        d(j+2) = a(j) + b(j+3)
        c(j) = b(j) + d(j+1)
 20   continue
      write(6,*) (a(i),i=2,12)
      write(6,*) (b(i),i=12,22)
      write(6,*) (c(i),i=6,16)
      write(6,*) (d(i),i=1,11)
      stop
      end
