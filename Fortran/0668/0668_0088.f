      program main
      real*4 a1(100,100),b1(100,100),c1(100,100)
      integer nc(10)
      data a1/10000*0./,b1/10000*1./,c1/10000*2./
      data nc/1,2,3,4,5,6,7,8,9,0/
      do 1 j=1,100
        do 2 i=1,100
          a1(i,j)=b1(i,j)+c1(i,j)
          b1(i,j)=b1(i,j)*2.
    2   continue
    1 continue
      do 3 k=1,10
        do 4 j=1,10
          do 5 i=1,100
            a1(i,j)=b1(i,k)/2.
    5     continue
    4   continue
    3 continue
      do 6 j=1,100
        if(a1(1,j).gt.1.0)then
          do 7 i=1,100,2
            a1(i,j)=2.
    7     continue
        else
          do 8 i=2,100,2
            a1(i,j)=1.
    8     continue
        endif
    6 continue
      do 9 j=1,nc(10)
        do 10 i=1,100
          a1(i,j)=c1(i,j)*b1(i,j)+a1(j,i)
   10   continue
    9 continue
      do 11 j=1,100,2
        do 12 i=1,100
          b1(i,j)=a1(i,j)
   12   continue
   11 continue
      do 13 j=1,100,nc(1)
        do 14 i=1,100
          c1(i,j)=a1(i,j)+b1(i,j)
          a1(i,j)=a1(j,i)
   14   continue
   13 continue
      do 15 j=100,1,-1
        do 16 i=1,100
          b1(i,j)=a1(i,j)+b1(i,j)
   16   continue
   15 continue
      do 17 j=1,10
        do 18 i=1,nc(j)
          a1(i,j)=b1(i,j)+c1(i,j)
          c1(i,j)=b1(i,j)+a1(j,i)
   18   continue
   17 continue
      call sub1(a1,b1)
      call sub2(a1,b1,10)
      call sub3(a1,b1)
      write(*,*)a1(1,1),a1(100,100),b1(100,100),c1(1,100),c1(100,1)
      write(*,*)a1(100,1),a1(10,10),b1(1,1),b1(100,1),b1(27,2)
      stop
      end
      subroutine sub1(xa1,xb1)
      real*4 xa1(100,100),xb1(100,100),t(100)
      do 101 j=1,100
        do 102 i=1,100
          t(i)=0.
  102   continue
        do 103 i=1,j
          t(i)=t(i)+xa1(i,j)
  103   continue
        do 104 i=1,100
          xb1(i,j)=t(i)
  104   continue
  101 continue
      return
      end
      subroutine sub2(ya1,yb1,n)
      integer n
      real*4  ya1(n,n),yb1(n,n)
      do 201 i=1,n
        ya1(i,1)=ya1(i,2)+ya1(i,3)
        yb1(i,1)=yb1(i,2)+yb1(i,3)
  201 continue
      return
      end
      subroutine sub3(za1,zb1)
      real*4 za1(100,100),zb1(100,100)
      do 301 j=1,100
        do 302 i=1,10
          za1(i,j)=za1(i,j)+zb1(i,1)
  302   continue
  301 continue
      write(*,*)za1(2,1)
      return
      end
