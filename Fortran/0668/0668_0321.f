      real*8    a(10000,10),b(10000,10),c(10000,10),d(10000,10)
      common    /com/a,b,c,d
      do 20 j=1,10
        do 10 i=1,10000
          a(i,j)=1.23
          b(i,j)=4.56
          c(i,j)=7.89
   10   continue
   20 continue
      call sub1(a,b,c,d)
      call sub2(a,b,c,d)
      stop
      end
      subroutine sub1(a,b,c,d)
      real*8     a(10000,10),b(10000,10),c(10000,10),d(10000,10)
      real*8     x
      integer    z
      z=int(sin(0.0))
      do 20 j=1,10
        do 10 i=1,10000
          d(i,j)=(-1)**i
   10   continue
   20 continue
      do 40 j=1,10
        do 30 i=1,10000
          if (d(i,j).gt.0.0d0) then
            a(i*z+1,1)=b(i,j)*c(i,j)+d(i,j)
          endif
   30   continue
   40 continue
      x=a(1,1)
      write(6,*) ' '
      write(6,*) x
      return
      end
      subroutine sub2(a,b,c,d)
      real*8     a(10000,10),b(10000,10),c(10000,10),d(10000,10)
      real*8     x
      integer    z
      z=0
      do 20 j=1,10
        do 10 i=1,10000
          d(i,j)=i*j
   10   continue
   20 continue
      do 40 j=1,10
        do 30 i=1,10000
          if (d(i,j).gt.c(i,j)) then
            a(i*z+1,i**z)=b(i,j)
          endif
   30   continue
   40 continue
      x=a(1,1)
      write(6,*) ' '
      write(6,*) x
      return
      end
