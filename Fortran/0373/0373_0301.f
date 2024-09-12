      real,dimension(10) :: f3
      real,dimension(10) :: a,b
      real c
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/10/
      do i=1,10
       f3(i) = -(a(i)*b(i)) + c
      end do
      print *,f3
      do i=1,10
       f3(i) = -(a(i)*b(i)) - c
      end do
      print *,f3
      do i=1,10
       f3(i) = -(a(i)*b(i) + c)
      end do
      print *,f3
      do i=1,10
       f3(i) = -(a(i)*b(i) - c)
      end do
      print *,f3

      do i=1,10
       f3(i) = -c -(a(i)*b(i))
      end do
      print *,f3
      do i=1,10
       f3(i) = -c +(a(i)*b(i))
      end do
      print *,f3,a,b,c
      end

