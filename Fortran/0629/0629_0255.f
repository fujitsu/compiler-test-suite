       i9 = 0
       do i=1,3,2
         do j=2,3
           do k=1,3,3
             i9 = i9 + i + j + k
           enddo
         enddo
       enddo
       print*, i9
       end
