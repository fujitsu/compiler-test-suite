   program main
     type :: tt
       integer :: n
     end type

     type(tt), parameter :: t_const = tt(7)

     call s()
     call s()
rewind 1
read(1,*) i1,i2;if (any((/i1,i2/)/=(/3,7/)))print *,'error-1'
read(1,*) i1,i2;if (any((/i1,i2/)/=(/4,8/)))print *,'error-2'
print *,'pass'

   contains

     subroutine s()
       integer :: i = 3
       type(tt) :: t = t_const

       write(1,*)i, t
       i   = i+1
       t%n = t%n+1
     end subroutine s

   end program main
