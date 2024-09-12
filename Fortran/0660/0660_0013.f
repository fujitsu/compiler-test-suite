      program main
       intrinsic selected_real_kind,sin,cos
       integer,parameter :: dp =selected_real_kind(10)
       real(kind=dp) :: x,f
       x=3.1415926535_dp
       f=sin(x/4.0_dp)+cos(x/4.0_dp)
       write (*,*) f
       print *,'pass'
      end program main
