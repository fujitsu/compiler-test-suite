       integer :: ncol,i
       real(kind=8) :: r0,r(100)
       data r/100*1.1/

       ncol = 100
       r0 = 0.0

       do i=1,ncol
         r0 = r0 + r(i) * r(i)
       enddo
       print*, r0

       r0 = 0.0

       do i=1,ncol
         r0 = r0 + r(i) * r(i)
       enddo
       print*, r0
       end
