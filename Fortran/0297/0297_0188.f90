       complex(kind=16),dimension(100) :: a
       complex(kind=16),dimension(100) :: b
       a = (1.0,1.0)
       b = (2.0,2.0)

       do i=1,100
         a(i) = a(i) + b(i)
       enddo
       print*, a(1),a(50),a(100)

       do i=1,50
         a(i) = a(i+50) + b(i)
       enddo
       print*, a(1),a(50),a(51)

       do i=1,100,4
         a(i) = a(i+1) + b(i)
       enddo
       print*, a(1),a(3),a(5)
       end
