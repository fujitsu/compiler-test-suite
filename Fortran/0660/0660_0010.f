      program main
       real :: s
       type point
        real :: x,y
       end type point
       type (point) :: p1,p2
        intrinsic abs
       write(8,*) 3.,2.,2.,3.
       rewind 8
       read(8,*) p1,p2
       s=abs(p1%x*p2%y-p1%y*p2%x)/2
       write(*,*) s            
       print *,'pass'
      end program main
