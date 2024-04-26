      real*4  a(20,20),b(20,20),c(20,20)
      equivalence (n1,nx),(n2,ny)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/18/
      do 10 i=2,nn
        n1=i+1
        n2=1
        call  sub(n2)
        if (i.gt.5) then
          n3=i-1
        else
          n3=i+1
        endif
        do 20 j=2,n3
          a(i,j)=a(n2,j-1)+b(j,n1)
          b(j+1,i)=a(i,j)+c(i,j)
 20     continue
        n1=n1+1
        c(n1,n1)=a(i,i)
 10   continue

      nx=1
      do 30 i=2,nn
        n1=i+1
        n2=1
        if (i.gt.5) then
          ny=i-1
        else
          n3=i+1
        endif
        do 40 j=2,nn
          c(i,j)=a(n2,j-1)+b(j,n1)
          a(i,j)=b(i,j)+c(n1,j)
 40     continue
        nx=nx+1
        b(nx,nx)=a(i,i)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
      subroutine sub(nn)
      nn=nn+2
      return
      end
