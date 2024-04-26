       integer*4 d,a(10,10,10),ind1,ind2,ind3
       d = 0
       ind1 = 0
       ind2 = 0
       ind3 = 0

       do k=1,10
         do j=1,10
           do i=1,10
             a(i,j,k) = i + j - k
           enddo
         enddo
       enddo

       do k=1,10
         do j=1,10
           do i=1,10
             if (d < a(i,j,k)) then
               ind1 = i
               ind2 = j
               d = a(i,j,k)
               ind3 = k
             endif
           enddo
         enddo
       enddo

       print*, d,ind1,ind2,ind3
       end


