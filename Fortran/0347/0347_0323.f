      common /vsu1/ a(20,20),b(20,20),c(20,20),l(20)
      integer*4  l
      equivalence (l(1),il1),(l(2),il2)
      data  nn/18/
      do 10 j=1,20
       l(j)=j
       do 10 i=1,20
         a(i,j)=100.-float(i+j)
         b(i,j)=float(i)
         c(i,j)=float(j)
 10   continue
      do 20 k=2,nn
        n1=k+1
        n2=k-1
        n3=1
        goto 30
 31     continue
        do 21 j=2,nn
         do 22 i=2,nn
           a(i,n1)=a(i-1,n2)+c(i,j)
           b(i,j)=b(i-1,n2)+c(i,j)
 22      continue
         c(n3,j)=b(n2,j)+1.0
 21     continue
        goto 20
 30     continue
        n3=n3+1
        n2=1
        goto 31
 20   continue
      do 40 j=3,nn-2
        n1=j-1
        n2=j-2
 41     il1=j+1
 42     il2=j+2
        if (a(j,j).gt.1.0) then
          call sub
        endif
        do 50 i=2,nn
          a(i,n1)=a(i-1,n2)+c(i,j)
 50     continue
        do 51 i=2,nn
          b(i,il1)=b(i-1,il2)+a(i,j)
 51     continue
        do 52 i=2,nn
          c(i,n2)=c(i-1,il1)+b(i,j)
 52     continue
 40   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
      subroutine sub
      common /vsu1/ a(20,20),b(20,20),c(20,20),l(20)
      integer*4  l
      a(1,1)=a(1,1)+b(1,1)+c(l(1),l(1))
      return
      end
