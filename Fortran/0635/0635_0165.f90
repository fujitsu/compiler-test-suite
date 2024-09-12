       integer(kind=8),dimension(3000) :: a1
       integer(kind=8),dimension(3000,300) :: b1
       real(kind=8),dimension(3000) :: a2
       real(kind=8),dimension(3000,300) :: b2
       logical(kind=8),dimension(3000) :: a3
       logical(kind=8),dimension(3000,300) :: b3
       data a1/3000*1/,a2/3000*2/,a3/3000*.true./

       do j=1,300
         do i=3000,2,-1
           b1(i,j) = a1(i-1) + 1
           a1(i) = j
         enddo
       enddo

       print*, sum(a1)
       print*, b1(2,1)

       do j=1,300
         do i=3000,2,-1
           b2(i,j) = a2(i-1) + 1
           a2(i) = j
         enddo
       enddo

       print*, sum(a2)
       print*, b2(2,1)

       do j=1,300
         do i=3000,2,-1
           b3(i,j) = a3(i-1)  .and. .true.
           a3(i) = i .lt. j
         enddo
       enddo

       print*, a3
       print*, b3(2,1)

       end
