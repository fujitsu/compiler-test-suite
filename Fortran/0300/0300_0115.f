       integer*4 a(10,10,10)/1000*0/
       integer*4 vmax/0/

       do n=1,10
       do i=1,10
         do j=1,10
           a(n,i,j) = n + i + j
         enddo
       enddo
       enddo

       do n=1,10
       do i=1,10
         do j=1,10
           if (vmax .lt. a(n,i,j)) then
             vmax = a(n,i,j)
           endif
         enddo
       enddo
       enddo 
       print*, vmax
       end
