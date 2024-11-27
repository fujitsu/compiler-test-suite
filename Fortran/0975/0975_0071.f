      real*4 a(100,100),b(100,100),c(100,100)

      data a/10000*0./,b/10000*1./,c/10000*2./

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

      stop
      end
