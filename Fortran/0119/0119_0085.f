       integer n/0/
       real r/0.0/
       complex c/(0.0,0.0)/
       integer,pointer :: p
       integer,target :: pp
       data pp/0/

       type xxx
         integer str
       end type xxx

       type(xxx) :: xyz

       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             n = n - 1
           endif
         enddo
       enddo
       print*, n

       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             r = r - 1.0
           endif
         enddo
       enddo
       print*, r

       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             c = c - (1.0,1.0)
           endif
         enddo
       enddo
       print*, c

       p => pp
       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             p = p - 1
           endif
         enddo
       enddo
       print*, p

       xyz%str = 0
       do i=1,100
         do j=1,100
           if (mod(j,2).eq.0) then
             xyz%str = xyz%str - 1
           endif
         enddo
       enddo
       print*, xyz%str
       end
