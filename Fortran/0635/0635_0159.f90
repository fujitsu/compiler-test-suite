       integer(kind=4),dimension(3000)    :: a1
       integer(kind=4),dimension(3000,300) :: b1
       real(kind=8),dimension(3000)       :: a2
       real(kind=8),dimension(3000,300)    :: b2
       logical(kind=4),dimension(3000)    :: a3
       logical(kind=4),dimension(3000,300) :: b3

       data a1/3000*0/, a2/3000*1/, a3/3000*.true./
       data b1/900000*1/, b2/900000*2/
       data b3/450000*.true., 450000*.false./

       do j=1,300
         do i=1,3000
           a1(i) = a1(i) + b1(i,j)
         enddo
       enddo

       print*, sum(a1)

       do j=1,300
         do i=1,3000
           a2(i) = a2(i) * b2(i,j)
         enddo
       enddo

       print*, sum(a2)

       do j=1,300
         do i=1,3000
           a3(i) = a3(i) .or. b3(i,j)
         enddo
       enddo

       print*, a3
       end
