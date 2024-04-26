      real*8    a(10,10,10),b(10,10,10)
      data    a,b/1000*1.,1000*2./
      data    m1,m2,m3/10,8,6/
      data    n/10/,m/1/
      do 100 i=1,m1
      do 100 j=1,m2,1
      do 100 k=1,m3
        a(i,j,k) = j
        b(i,j,k) = k
  100 continue
      call sub01(a,b,n,m,m1,m2,m3)
      call sub02(a,b,n,m,m1,m2,m3)
      call sub03(a,b,n,m,m1,m2,m3)
      call sub04(a,b,n,m,m1,m2,m3)
      call sub05(a,b,n,m,m1,m2,m3)
      call sub06(a,b,n,m,m1,m2,m3)
      call sub07(a,b,n,m,m1,m2,m3)
      call sub08(a,b,n,m,m1,m2,m3)
      end

      subroutine sub02(a,b,n,m,n1,n2,n3)
      real*8 a(n,n,n),b(n,n,n)
      do 100 i=1,n1
      do 100 j=1,n2,1
      do 100 k=1,n3
       a(i,j,k)= a(i,j,k)+ b(i,j,k)
  100 continue
      write(6,*) a
      return
      end

      subroutine sub01(a,b,n,m,n1,n2,n3)
      real*8 a(n,n,n),b(n,n,n)
      do 100 i=1,n1
      do 100 j=1,10,1
      do 100 k=1,n2
       a(i,j,k)= a(i,j,k)+ b(i,j,k)
  100 continue
      write(6,*) a
      return
      end

      subroutine sub03(a,b,n,m,n1,n2,n3)
      real*8 a(n,n,n),b(n,n,n)
      do 100 i=1,10
      do 100 j=1,n2,1
      do 100 k=1,10
       a(i,j,k)= a(i,j,k)+ b(i,j,k)
  100 continue
      write(6,*) a
      return
      end

      subroutine sub04(a,b,n,m,n1,n2,n3)
      real*8 a(n,n,n),b(n,n,n)
      do 100 i=1,n3
      do 100 j=1,n2,1
      do 100 k=1,10
       a(i,j,k)= a(i,j,k)+ b(i,j,k)
  100 continue
      write(6,*) a
      return
      end

      subroutine sub05(a,b,n,m,n1,n2,n3)
      real*8 a(n,n,n),b(n,n,n)
      do 100 i=m,n3
      do 100 j=m,n2,1
      do 100 k=m,10
       a(i,j,k)= a(i,j,k)+ b(i,j,k)
  100 continue
      write(6,*) a
      return
      end

      subroutine sub06(a,b,n,m,n1,n2,n3)
      real*8 a(n,n,n),b(n,n,n)
      do 100 i=m,n3
      do 100 j=1,n2,1
      do 100 k=m,10
       a(i,j,k)= a(i,j,k)+ b(i,j,k)
  100 continue
      write(6,*) a
      return
      end

      subroutine sub07(a,b,n,m,n1,n2,n3)
      real*8 a(n,n,n),b(n,n,n)
      do 100 i=1,n3
      do 100 j=m,n2,1
      do 100 k=1,10
       a(i,j,k)= a(i,j,k)+ b(i,j,k)
  100 continue
      write(6,*) a
      return
      end

      subroutine sub08(a,b,n,m,n1,n2,n3)
      real*8 a(n,n,n),b(n,n,n)
      real*8 c(10,n,10)
      c=1
      do 100 i=m,n3,2
      do 100 j=m,n2,1
      do 100 k=m,n1,2
       a(i,j,k)= a(i,j,k)+ b(i,j,k)+c(k,j,i)
  100 continue
      write(6,*) a
      return
      end
