       integer a(10,10)/50*1,100,49*2/
       integer vmax/0/
       integer imax/0/
       integer jmax/0/

       do i=1,10
         do j=1,10
           if (vmax.lt.a(j,i)) then
             vmax = a(j,i)
             imax = i
             jmax = j
           endif
         enddo
       enddo

       print*, vmax,imax,jmax

       do i=1,10
         do j=1,10
           if (vmax.lt.a(j,i)) then
             vmax = a(j,i)
             imax = i
             jmax = j
           endif
         enddo
       enddo

       print*, vmax,imax

       do i=1,10
         do j=1,10
           if (vmax.lt.a(j,i)) then
             vmax = a(j,i)
             imax = i
             jmax = j
           endif
         enddo
       enddo

       print*, imax,jmax

       do i=1,10
         do j=1,10
           if (vmax.lt.a(j,i)) then
             vmax = a(j,i)
             imax = i
             jmax = j
           endif
         enddo
       enddo

       end
 
