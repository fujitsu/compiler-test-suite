       complex(kind=8),dimension(1000)     :: a8
       complex(kind=8),dimension(1000,1000)  :: b8
       complex(kind=16),dimension(1000)    :: a16
       complex(kind=16),dimension(1000,1000) :: b16

       data a8/1000*(0.0,0.0)/,a16/1000*(0.0,0.0)/
       data b8/1000000*(0.0,0.0)/,b16/1000000*(0.0,0.0)/

       do j=1,1000
         do i=1,1000
           a8(i) = j
           b8(i,j) = a8(i) + 1
         enddo
       enddo

       print*, sum(a8)
       print*, b8(1,1)

       do j=1,1000
         do i=1,1000
           a16(i) = j
           b16(i,j) = a16(i) + 1
         enddo
       enddo

       print*, sum(a16)
       print*, b16(1,1)

       end
