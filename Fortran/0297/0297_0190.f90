       complex(kind=8),dimension(10,10) :: a
       complex(kind=8),dimension(10,10) :: b
       a = (1.0,1.0)
       b = (2.0,2.0)

       do i=1,10
         do j=1,10
           a(j,i) = a(j,i) + b(j,i)
         enddo
       enddo
       print*, a(1,1),a(5,5),a(10,10)

       do i=1,10
         do j=1,5
           a(j,i) = a(j+5,i) + b(j,i)
         enddo
       enddo
       print*, a(1,1),a(5,5),a(6,6)

       do i=1,10
         do j=1,10,2
           a(j,i) = a(j,i) + b(j,i)
         enddo
       enddo
       print*, a(1,1),a(2,2),a(3,3)

       end
