      real*4  a(20),b(20),c(20)
      data  a,b,c/20*1.,20*2.,20*3./
      n=1
      do 10 i=1,18
        a(i)=b(n)+c(i)
        n=n+1
        b(n)=b(n)+c(i)
        c(i)=a(i)*2
 10   continue
      n=1
      do 20 i=1,18
        b(i)=a(n)+c(i)
        n=n+1
        a(n)=a(n)+c(i)
        c(i)=b(i)*2
 20   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
