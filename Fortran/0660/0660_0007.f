      program main
       integer :: base,n,yy
       base=1988
       n=6
       yy=sub(n)
       write(*,*) n,yy
      contains
       function sub(x) result(y)
       integer :: x,y
       y=base+x
       end function sub
      end program main
