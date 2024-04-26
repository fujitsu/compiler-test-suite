      real*4  a(20),b(20),c(20)
      data  a,b,c/20*1.,20*2.,20*3./
      n=1
      do 10 i=1,18
        rx=b(n)+a(i)
        n=n+1
        b(n)=rx+c(i)
        a(i)=a(i)*2
 10   continue
      n=1
      do 20 i=1,18
        rx=a(i)+c(i)
        ry=b(n)+c(i)
        n=n+1
        a(i)=rx+ry
        b(n)=rx+ry
 20   continue
      n=1
      do 30 i=1,18
        c(n)=a(n)+c(n)
        n=n+1
        a(n)=b(i)+c(n)
        b(i)=b(i)*a(n)
 30   continue
      write(6,*) '## a ##'
      write(6,1) a
      write(6,*) '## b ##'
      write(6,1) b
      write(6,*) '## c ##'
      write(6,1) c
    1 format(4f20.10)
      stop
      end
