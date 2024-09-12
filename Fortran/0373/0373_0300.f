           real*8 a(10) , b(10) , c(10) , d
           data a /1,2,3,4,5,6,7,8,9,10/
           data b /2,4,6,8,10,12,14,16,18,20/
           data c /1,2,3,4,5,6,7,8,9,10/
           data d /100/
           do i=1,10
              a(i) = a(i) * d + b(i)
           end do
           print *,a
           do i=1,10
               a(i) = a(i) * b(i) + d
           end do
           print *,a
           do i=1,10
              a(i) = a(i) * b(i) + c(i)
           end do
           print *,a
           do i=1,10
              a(i) = a(i) * d - b(i)
           end do
           print *,a
           do i=1,10
               a(i) = a(i) * b(i) - d
           end do
           print *,a
           do i=1,10
              a(i) = a(i) * b(i) - c(i)
           end do
           print *,a,b,c,d
           end
