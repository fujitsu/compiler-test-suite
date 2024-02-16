       integer a(10)/1,2,3,4,5,6,7,8,9,0/
       integer imax/0/
       integer b(10)/10*0/
       integer jmax/0/
       integer x/0/

       do i=1,10
         if (a(i).gt.imax) then
           imax = a(i)
         endif
       enddo

       do i=1,10
         if (a(i).gt.b(5)) then
           b(5) = a(i)
         endif
       enddo

       do i=1,10
         x = a(i) - jmax
         if (x.gt.0) then
           jmax = a(i)
         endif
       enddo

       print*, "OK"
       end
