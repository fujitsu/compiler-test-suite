       integer s/0/
       integer b(10,10,10)
       integer imax/0/, jmax/0/, kmax/0/

       do j=1,10
         do i=1,10
           do k=1,10
             b(i,j,k) = i + j + k
             if (s .lt. b(i,j,k)) then
               s = b(i,j,k)
               imax = i
               jmax = j
               kmax = k
             endif
           enddo
         enddo
       enddo

       print*, s, imax, jmax, kmax
       end
