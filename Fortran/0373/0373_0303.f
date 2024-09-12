      real,dimension(10) :: a
      real,dimension(10) :: b,c
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,2,3,4,5,6,7,8,9,10/

       do i=1,10
        a(i) = -(a(i) + b(i))
       end do
       print *,a,b

       do i=1,10
        a(i) = -(a(i) / b(i))
       end do
       print *,a,b

       do i=1,10
        a(i) = -a(i)-b(i)
       end do
       print *,a,b 
       do i=1,10
        a(i) = -(-(a(i)+b(i))-(c(i)))
       end do
       print *,a,b,c
       end

