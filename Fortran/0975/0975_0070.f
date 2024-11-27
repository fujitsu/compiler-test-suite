      real*4 a(100,100),b(100,100),c(100,100)

      data a/10000*0./,b/10000*1./,c/10000*2./

      b=c
      write(*,*) b(100,100)

      a=a
      write(*,*) a(100,100)

      do 1 j=1,100
        do 2 i=1,100
          a(i,j)=b(i,j)
 2     continue
 1    continue
      write(*,*) a(100,100)

      do 3 j=1,100
        do 4 i=1,100
          a(i,j)=c(j,i)
 4     continue
 3    continue
      write(*,*) a(100,100)

      do 5 j=1,98
        do 6 i=1,99
          a(i,j)=a(i+1,j+2)
 6     continue
 5    continue
      write(*,*) a(100,100)

      do 7 j=1,100
        do 8 i=1,100
          a(i,j)=a(j,i)
 8     continue
 7    continue
      write(*,*) a(100,100)

      stop
      end
