      program main
      real*4 a1(100,10),b1(100,10),c1(100,11)
      real*4 a2(100,10),b2(100,10),c2(100,11)
      integer nc(10)
      data a1/1000*2./,b1/1000*1./,c1/1100*2./
      data a2/1000*3./,b2/1000*2./,c2/1100*3./
      data nc/1,2,3,4,5,6,7,8,9,0/
      do 1 j=1,8
        do 2 i=1,100
          a1(i,j)=b1(i,j+1)+c1(i,j)
    2   continue
    1 continue
      write(*,*)a1(100,1),a1(100,2)
      do 3 j=1,9
        do 4 i=1,100
          b1(i,j)=c1(i,j+1)*2.
    4   continue
    3 continue
      write(*,*)b1(100,1),b1(100,2),b1(100,9)
      do 5 j=1,11
        do 6 i=1,100
          c1(i,j)=a1(i,1)-b1(i,1)
    6   continue
    5 continue
      write(*,*)c1(100,4),c1(100,5),c1(100,9),c1(100,11)
      do 7 j=1,nc(9)
        do 8 i=1,100
          a2(i,j)=a2(i,j)*c2(i,j+1)
    8   continue
    7 continue
      write(*,*)a2(100,8),a2(100,9)
      do 9 j=1,nc(10)
        do 10 i=1,100
          a1(i,j)=a1(i,j)+b1(i,j)
   10   continue
    9 continue
      write(*,*)a1(1,10)
      do 11 j=1,nc(8)
        do 12 i=1,100
          b1(i,j)=b1(i,j)+a1(i,j+1)
   12   continue
   11 continue
      write(*,*)b1(1,1),b1(1,4),b1(1,5),b1(1,8)
      do 13 j=1,nc(10)
        do 14 i=1,100
          a2(i,j)=a1(i,j)+b1(i,1)+b2(i,j)
   14   continue
   13 continue
      write(*,*)a2(100,8),a2(100,9),a2(100,10)
      call sub(a1,b1,0)
      call sub(a1,b1,0)
      stop
      end
      subroutine sub(a,b,nc)
      real*4 a(100,10),b(100,10)
      integer nc
      do 10 j=1,nc
        do 20 i=1,100
          a(i,j)=a(i,j)+b(i,j+1)*2
   20   continue
   10 continue
      write(*,*)a(1,1)
      do 30 j=1,nc
        do 40 i=1,100
          b(i,j)=a(i,j)+b(i,j)*2
   40   continue
   30 continue
      write(*,*)b(1,1)
      return
      end
