      parameter (n1=100,n2=100,n3=10)
      common /com/a,b,c
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do 10 k=1,n3
        do 10 j=1,n2
          do 10 i=1,n1
            a(i,j,k)=(1.23,-3.2)
            b(i,j,k)=(5.13,4.2)
            c(i,j,k)=(3.89,2.34)
   10 continue
      call sub1
      call check
      call sub2
      call check
      call sub3
      call check
      call sub4
      call check
      call sub21
      call check
      call sub22
      call check
      call sub23
      call check
      call sub24
      call check
      call sub31
      call check
      call sub32
      call check
      call sub33
      call check
      call sub34
      call check
      end

      subroutine check
      parameter (n1=100,n2=100,n3=10)
      common /com/a,b,c
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      complex*16 aa,bb,cc
      aa = (0.0,0.0)
      bb = (0.0,0.0)
      cc = (0.0,0.0)
      do 20 k=1,n3
        do 20 j=1,n2
          do 20 i=1,n1
            aa = aa + a(i,j,k)
            bb = bb + b(i,j,k)
            cc = cc + c(i,j,k)
   20 continue
      print*,' aa= ',aa
      print*,' bb= ',bb
      print*,' cc= ',cc
      end
      subroutine sub1
      parameter (n1=100,n2=100,n3=10)
      common /com/a,b,c
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do 10 k=1,n3
        do 10 j=1,n2
          do 10 i=1,n1
            a(i,j,k) = b(i,j,k) * c(i,j,k)
   10 continue
      end
      subroutine sub2
      parameter (n1=100,n2=100,n3=10)
      common /com/a,b,c
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do 10 k=1,n3
        do 10 j=1,n2
          do 10 i=1,n1
            a(i,j,k) = (0.0,0.0)
   10 continue
      do 20 k=1,n3
        do 20 j=1,n2
          do 20 i=1,n1
            a(i,j,k) = sin(cos(b(i,j,k)))
     &               + cos(sin(c(i,j,k)))
   20 continue
      end
      subroutine sub3
      parameter (n1=100,n2=100,n3=10)
      parameter (n23=n2*n3)
      common /com/a,b,c
      complex*16 a(n1,n23),b(n1,n23),c(n1,n23)
      do 10 j=1,n23
        do 10 i=1,n1
          a(i,j) = (0.0,0.0)
   10 continue
      do 20 j=1,n23
        do 20 i=1,n1
          a(i,j) = sin(cos(b(i,j)))
     &             + cos(sin(c(i,j)))
   20 continue
      end
      subroutine sub4
      parameter (n1=100,n2=100,n3=10)
      parameter (n123=n1*n2*n3)
      common /com/a,b,c
      complex*16 a(n123),b(n123),c(n123)
      do 10 i=1,n123
        a(i) = (0.0,0.0)
   10 continue
      do 20 i=1,n123
        a(i) = b(i) / c(i) * sin(b(i))
   20 continue
      end
      subroutine sub21
      parameter (n1=100,n2=100,n3=10)
      common /com/a,b,c
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do 10 k=n3,1,-1
        do 10 j=n2,1,-1
          do 10 i=n1,1,-1
            a(i,j,k) = b(i,j,k) * c(i,j,k)
   10 continue
      end
      subroutine sub22
      parameter (n1=100,n2=100,n3=10)
      common /com/a,b,c
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do 10 k=n3,1,-1
        do 10 j=n2,1,-1
          do 10 i=n1,1,-1
            a(i,j,k) = (0.0,0.0)
   10 continue
      do 20 k=n3,1,-1
        do 20 j=n2,1,-1
          do 20 i=n1,1,-1
            a(i,j,k) = sin(cos(b(i,j,k)))
     &               + cos(sin(c(i,j,k)))
   20 continue
      end
      subroutine sub23
      parameter (n1=100,n2=100,n3=10)
      parameter (n23=n2*n3)
      common /com/a,b,c
      complex*16 a(n1,n23),b(n1,n23),c(n1,n23)
      do 10 j=n23,1,-1
        do 10 i=n1,1,-1
          a(i,j) = (0.0,0.0)
   10 continue
      do 20 j=n23,1,-1
        do 20 i=n1,1,-1
          a(i,j) = sin(cos(b(i,j)))
     &             + cos(sin(c(i,j)))
   20 continue
      end
      subroutine sub24
      parameter (n1=100,n2=100,n3=10)
      parameter (n123=n1*n2*n3)
      common /com/a,b,c
      complex*16 a(n123),b(n123),c(n123)
      do 10 i=n123,1,-1
        a(i) = (0.0,0.0)
   10 continue
      do 20 i=n123,1,-1
        a(i) = b(i) / c(i) * sin(b(i))
   20 continue
      end
      subroutine sub31
      parameter (n1=100,n2=100,n3=10)
      common /com/a,b,c
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do 10 k=n3,1,-1
        do 10 j=1,n2
          do 10 i=n1,1,-3
            a(i,j,k) = b(i,j,k) * c(i,j,k)
   10 continue
      end
      subroutine sub32
      parameter (n1=100,n2=100,n3=10)
      common /com/a,b,c
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do 10 k=n3,1,-1
        do 10 j=1,n2
          do 10 i=n1,1,-3
            a(i,j,k) = (0.0,0.0)
   10 continue
      do 20 k=n3,1,-1
        do 20 j=1,n2
          do 20 i=n1,1,-3
            a(i,j,k) = sin(cos(b(i,j,k)))
     &               + cos(sin(c(i,j,k)))
   20 continue
      end
      subroutine sub33
      parameter (n1=100,n2=100,n3=10)
      parameter (n23=n2*n3)
      common /com/a,b,c
      complex*16 a(n1,n23),b(n1,n23),c(n1,n23)
      do 10 j=1,n23
        do 10 i=n1,1,-3
          a(i,j) = (0.0,0.0)
   10 continue
      do 20 j=1,n23
        do 20 i=n1,1,-3
          a(i,j) = sin(cos(b(i,j)))
     &             + cos(sin(c(i,j)))
   20 continue
      end
      subroutine sub34
      parameter (n1=100,n2=100,n3=10)
      parameter (n123=n1*n2*n3)
      common /com/a,b,c
      complex*16 a(n123),b(n123),c(n123)
      do 10 i=n123,1,-3
        a(i) = (0.0,0.0)
   10 continue
      do 20 i=n123,1,-3
        a(i) = b(i) / c(i) * sin(b(i))
   20 continue
      end
