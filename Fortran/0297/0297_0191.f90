       complex(kind=8),dimension(100) :: a
       complex(kind=8),dimension(100) :: b
       complex(kind=8) :: c
       a = (1.0,1.0)
       b = (2.0,2.0)
       c = (0.0,0.0)

       do i=1,100
         a(i) = a(5) + b(i)
       enddo
       print*, a(5)

       do i=1,100,2
         a(i) = a(5) + b(i)
       enddo
       print*, a(5)

       do i=1,100
         c = a(5) + b(i)
         a(i) = c + b(i)
       enddo

       print*, a(5),c
       end
