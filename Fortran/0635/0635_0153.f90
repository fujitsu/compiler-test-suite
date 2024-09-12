       logical(kind=1),dimension(300) :: a1
       logical(kind=1),dimension(300,300) :: b1
       logical(kind=2),dimension(300) :: a2
       logical(kind=2),dimension(300,300) :: b2
       logical(kind=4),dimension(300) :: a4
       logical(kind=4),dimension(300,300) :: b4
       logical(kind=8),dimension(300) :: a8
       logical(kind=8),dimension(300,300) :: b8

       do j=1,300
         do i=1,300
           a1(i) = i .gt. j
           b1(i,j) = a1(i) .and. .true.
         enddo
       enddo

       print*, a1
       print*, b1(1,1)

       do j=1,300
         do i=1,300
           a2(i) = i .gt. j
           b2(i,j) = a2(i) .and. .true.
         enddo
       enddo

       print*, a2
       print*, b2(1,1)

       do j=1,300
         do i=1,300
           a4(i) = i .gt. j
           b4(i,j) = a4(i) .and. .true.
         enddo
       enddo

       print*, a4
       print*, b4(1,1)

       do j=1,300
         do i=1,300
           a8(i) = i .gt. j
           b8(i,j) = a8(i) .and. .true.
         enddo
       enddo

       print*, a8
       print*, b8(1,1)

       end
