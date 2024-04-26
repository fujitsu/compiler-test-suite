       complex(kind=8),dimension(100) :: a
       complex(kind=8),dimension(100) :: b
       a = (1.0,1.0)
       b = (2.0,2.0)

       do i=1,90
         a(i) = a(i+1) + b(i)
       enddo
       print*, a(1),a(2),a(3)

       do i=1,50
         a(i) = a(i+20) + b(i)
       enddo
       print*, a(1),a(21),a(51)

       do i=1,98,2
         a(i) = a(i+2) + b(i)
       enddo
       print*, a(1),a(2),a(3)
       end
