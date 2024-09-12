      program main
      real*4 a1(100,100),b1(100,100),c1(100,100)
      real*8 a2(1000,100),b2(1000,100)
      integer nc(10),l,h
      equivalence(l,h)
      data a1/10000*0./,b1/10000*1./,c1/10000*2./
      data a2/100000*0./,b2/100000*1./
      data nc/1,2,3,4,5,6,7,8,9,0/
      do 1 j=1,99
        do 2 i=1,100
          a1(i,j)=b1(i,j)+c1(i,j+1)
    2   continue
    1 continue
      write(*,*)a1(1,99),a1(100,99)
      do 3 j=1,99
        do 4 i=1,1000
          a2(i,j)=b2(i,j+1)
    4   continue
    3 continue
      write(*,*)a2(1,99),a2(1000,99)
      k=1
      do 5 j=1,100
        do 6 i=1,100
          a1(i,k)=b1(i,j)
    6   continue
        k=k+nc(1)
    5 continue
      if(k.gt.100) k=100
      write(*,*)a1(1,100),a1(k,100),a1(2,100)
      k=0
      do 7 j=1,nc(9)
        k=k+1
        do 8 i=1,nc(9)*2
          a1(i,j)=c1(i,j)*b1(i,k)
    8   continue
    7 continue
      write(*,*)a1(1,k),a1(nc(1)*2,nc(1))
      k=0
      do 9 j=1,20
        k=k+nc(2)
        do 10 i=1,100
          b2(i,k)=a2(i,k)*2
          a2(i,j)=b2(i,k)
   10   continue
    9 continue
      k=0
      do 11 j=1,nc(9)
        k=k+1
        do 12 i=1,10
          c1(i,j)=a1(i,j)+b1(i,j)
          a1(i,j)=a1(j,i)
   12   continue
        k=k+2
        a2(1,k)=a1(1,k)
   11 continue
      write(*,*)a2(1,3),a2(1,k),a1(1,k)
      k=0
      do 13 j=1,nc(9)
        k=k+1
        do 14 i=1,10
          c1(i,j)=a1(i,j)+b1(i,j)
   14   continue
        k=k+nc(1)
   13 continue
      write(*,*)a1(1,k),k,c1(1,10),c1(10,10)
      h=0
      do 15 j=1,nc(9)
        do 16 i=1,10
          c1(i,j)=a1(i,j)+b1(i,j)
   16   continue
        l=l+nc(1)
   15 continue
      write(*,*)a1(1,h)
      do 17 j=1,10
        do 18 i=1,10
          a1(i,j)=b1(i,j)+c1(i,j)*j
          c1(i,j)=b1(i,j)+a1(j,i)
   18   continue
   17 continue
      write(*,*)a1(1,1),a1(10,10)
      call sub1(a1,b1)
      stop
      end
      subroutine sub1(xa1,xb1)
      real*4 xa1(100,100),xb1(100,100)
      do 101 j=1,100
        do 102 i=1,100
          xa1(i,j)=0.
          xb1(i,j)=j
  102   continue
  101 continue
      x=1.
      do 103 j=1,100
        do 104 i=1,100
          xa1(i,j)=xa1(i,j)+x
  104   continue
      x=x+2.
  103 continue
      write(*,*)xa1(1,1),xa1(1,50),xa1(1,51)
      return
      end
