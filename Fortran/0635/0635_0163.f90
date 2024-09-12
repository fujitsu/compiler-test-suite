       integer(kind=4),dimension(6000)    :: a1
       integer(kind=4),dimension(3000,300) :: b1
       real(kind=8),dimension(6000)       :: a2
       real(kind=8),dimension(3000,300)    :: b2
       logical(kind=4),dimension(6000)    :: a3
       logical(kind=4),dimension(3000,300) :: b3

       data a1/6000*0/, a2/6000*1/, a3/6000*.true./
       data b1/900000*1/, b2/900000*2/
       data b3/450000*.true., 450000*.false./

       do j=1,300
         do i=1,3000
           b1(i,j) = a1(i) + 1
           a1(i+3000) = j + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       do j=1,300
         do i=1,3000
           b2(i,j) = a2(i) * 2.0
           a2(i+3000) = j * 0.1
         enddo
       enddo

       print*, sum(a2)
       print*, b2(1,1)

       do j=1,300
         do i=1,3000
           b3(i,j) = a3(i) .or. b3(i,j)
           a3(i+3000) = i .gt. j
         enddo
       enddo

       print*, a3
       print*, b3(1,1)
       end
