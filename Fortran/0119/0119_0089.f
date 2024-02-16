       integer n/0/
       integer a(100)/100*1/

       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             n = n + a(j)
           endif
         enddo
       enddo
       print*, n

       n = 0
       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             n = n + a(1)
           endif
         enddo
       enddo
       print*, n

       n = 0
       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             n = n + j
           endif
         enddo
       enddo
       print*, n

       end
