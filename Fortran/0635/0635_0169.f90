       real(kind=4),dimension(300) :: a1
       real(kind=4),dimension(300,300) :: b1
       real(kind=4),dimension(300) :: a2
       real(kind=4),dimension(300,300) :: b2
       real(kind=4),dimension(5:305) :: a3
       real(kind=4),dimension(5:305,300) :: b3

       do j=1,300
         do i=1,300
           a1(5) = j
           b1(i,j) = a1(5) + 1
         enddo
       enddo

       print*, a1(5)
       print*, b1(1,1)

       do j=1,300
         a2 = j
         do i=1,300
           b2(i,j) = a2(i) + 1
         enddo
       enddo

       print*, sum(a2)
       print*, b2(1,1)

       do j=1,300
         do i=5,305
           a3(i) = j
           b3(i,j) = a3(i) + 1
         enddo
       enddo

       print*, sum(a3)
       print*, b3(5,1)

       end
