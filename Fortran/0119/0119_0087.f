       integer n/0/
       integer a(100)/10*10,20*20,30*30,40*100/

       do i=1,100
         do j=1,100,3
           if (mod(j,2).eq.0) then
             n = n + 1
           endif
         enddo
       enddo
       print*, n

       n = 0
       do i=1,100
         do j=100,1,-1
           if (mod(j,2).eq.0) then
             n = n + 1
           endif
         enddo
       enddo
       print*, n

       n = 0
       do i=1,100
         do j=1,a(i)
           if (mod(j,2).eq.0) then
             n = n + 1
           endif
         enddo
       enddo
       print*, n

       end
