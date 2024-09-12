       real(kind=4),dimension(300) :: a1
       real(kind=4),dimension(300,300) :: b1
       real(kind=8),dimension(300) :: a2
       real(kind=8),dimension(300,300) :: b2

       do j=1,300
         do i=1,300
           a1(i) = j
         enddo
         do i=1,300
           b1(i,j) = a1(i) + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       do j=1,300
         do i=1,300
           a2(i) = j
         enddo
         do i=1,300
           b2(i,j) = a2(i) + 1
         enddo
       enddo

       print*, sum(a2)
       print*, b2(1,1)
       end
