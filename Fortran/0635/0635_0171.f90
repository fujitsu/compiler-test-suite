       real(kind=4),dimension(3000) :: a1
       real(kind=4),dimension(3000,300) :: b1
       real(kind=4),dimension(3000) :: a2
       real(kind=4),dimension(3000,300) :: b2
       real(kind=4),dimension(3000) :: a3
       real(kind=4),dimension(3000,300) :: b3

       data a1/3000*1/

       do j=1,300
         do i=1,3000
           if (i.gt.1500) then
             a1(i) = j
           endif
           b1(i,j) = a1(i) + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       do j=1,300
         if (j.lt.1500) then
           do i=1,3000
             a2(i) = j
             b2(i,j) = a2(i) + 1
           enddo
         endif
       enddo

       print*, sum(a2)
       print*, b2(1,1)

       do j=1,300
         do i=1,3000
           if (i.lt.1500) then
             a3(i) = j
           else
             a3(i) = j + 1
           endif
           b3(i,j) = a3(i) + 1
         enddo
       enddo

       print*, sum(a3)
       print*, b3(1,1)
       end
