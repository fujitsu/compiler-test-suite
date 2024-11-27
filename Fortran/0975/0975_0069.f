      real*4 a(100,100),b(100,100),c(100,100)

      a=0.
      b=1.
      c=2.

      do 1 j=1,100
        do 2 i=1,100
          a(i,j)=b(i,j)+c(i,j)
    2   continue
    1 continue

      write(*,*) a(1,1),a(100,100)

      stop
      end
