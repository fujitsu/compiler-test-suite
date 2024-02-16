       integer n/0/
       real a(1000)/1000*1.0/
       real b(100)/100*2.0/

       do i=1,100
         do j=1,10
           if (mod(j,2).eq.0) then
             n = n + 1
             a(n) = b(j)
           endif
         enddo
       enddo
       print*, n,a(10)

       n = 0
       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             n = n + 1
           else 
             n = n + 2
           endif
         enddo
       enddo
       print*, n

       n = 1
       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             n = 100 - n
           endif
         enddo
       enddo
       print*, n

       end
