       real(kind=4),dimension(300) :: a4
       real(kind=4),dimension(300,300) :: b4
       real(kind=8),dimension(300) :: a8
       real(kind=8),dimension(300,300) :: b8
       real(kind=16),dimension(300) :: a16
       real(kind=16),dimension(300,300) :: b16

       do j=1,300
         do i=1,300
           a4(i) = j
           b4(i,j) = a4(i) + 1
         enddo
       enddo

       print*, sum(a4)
       print*, b4(1,1)

       do j=1,300
         do i=1,300
           a8(i) = j
           b8(i,j) = a8(i) + 1
         enddo
       enddo

       print*, sum(a8)
       print*, b8(1,1)

       do j=1,300
         do i=1,300
           a16(i) = j
           b16(i,j) = a16(i) + 1
         enddo
       enddo

       print*, sum(a16)
       print*, b16(1,1)

       end
