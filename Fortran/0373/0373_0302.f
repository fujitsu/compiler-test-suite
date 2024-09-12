      real,dimension(10) :: f3
      real,dimension(10) :: b,c
      real a
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,2,3,4,5,6,7,8,9,10/
      a=0
      do i=1,10
       f3(i) = -(a*b(i)) + c(i)
      end do
      print *,f3,a,b,c
      do i=1,10
       f3(i) = -(a*b(i)) - c(i)
      end do
      print *,f3,a,b,c
      do i=1,10
       f3(i) = -(a*b(i) + c(i))
      end do
      print *,f3,a,b,c
      do i=1,10
       f3(i) = -(a*b(i) - c(i))
      end do
      print *,f3,a,b,c
      do i=1,10
       f3(i) = -c(i) -(a*b(i))
      end do
      print *,f3,a,b,c
      do i=1,10
       f3(i) = -c(i) +(a*b(i))
      end do
      print *,f3,a,b,c
      end

