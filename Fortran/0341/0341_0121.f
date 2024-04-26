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
      end

      subroutine sub01(a,b,n,m,n1,n2,n3)
      real*8 a(10,10,*),b(n,n,n)
      do 100 i=1,10
      do 100 j=1,10,1
      do 100 k=1,10
       b(i,j,k)=  a(i,j,k)+ 1
  100 continue
      print *,b
      return
      end

      subroutine sub02(a,b,n,m,n1,n2,n3)
      real*8 a(10,10,*),b(n,n,n)
      do 100 i=m,n
      do 100 j=m,n,1
      do 100 k=m,n
       b(i,j,k)=  a(i,j,k)+ 1
  100 continue
      print *,b
      return
      end

      subroutine sub03(a,b,n,m,n1,n2,n3)
      real*8 a(10,10,*),b(n,n,n)
      do 100 i=1,n
      do 100 j=m,n,1
      do 100 k=m,10
       b(i,j,k)=  a(i,j,k)+ 1
  100 continue
      print *,b
      return
      end

      subroutine sub04(a,b,n,m,n1,n2,n3)
      real*8 a(10,10,*),b(n,n,n)
      do 100 i=m,10
      do 100 j=m,n,1
      do 100 k=1,n
       b(i,j,k)=  a(i,j,k)+ 1
  100 continue
      print *,b
      return
      end

      subroutine sub05(a,b,n,m,n1,n2,n3)
      real*8 a(10,10,*),b(n,n,n)
      do 100 i=m,n
      do 100 j=1,10,1
      do 100 k=m,n
       b(i,j,k)=  a(i,j,k)+ 1
  100 continue
      print *,b
      return
      end
