       integer(kind=8),dimension(300) :: a1
       integer(kind=8),dimension(300,300) :: b1
       real(kind=8),dimension(300) :: a2
       real(kind=8),dimension(300,300) :: b2
       logical(kind=8),dimension(300) :: a3
       logical(kind=8),dimension(300,300) :: b3
       data a1/300*1/,a2/300*2/,a3/300*.true./

       do j=1,300
         do i=1,299
           a1(i) = j
           b1(i,j) = a1(i+1) + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       do j=1,300
         do i=1,299
           a2(i) = j
           b2(i,j) = a2(i+1) + 1
         enddo
       enddo

       print*, sum(a2)
       print*, b2(1,1)

       do j=1,300
         do i=1,299
           a3(i) = i .lt. j
           b3(i,j) = a3(i+1)  .and. .true.
         enddo
       enddo

       print*, a3
       print*, b3(1,1)

       end
