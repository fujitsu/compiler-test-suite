      program main
       integer :: n,m,m2,m3
       REAL :: x,r
       intrinsic sqrt
       write(3,*) 10
       rewind 3
       read (3,*) n
       do m=1,n
          m2=m*m
          m3=m**3
          x=m
          r=sqrt(x)
          write (*,'(i3,i5,i7,f11.5)') m,m2,m3,r
       end do
       print *,'pass'
      end program main
